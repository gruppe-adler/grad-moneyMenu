#define PREFIX grad
#define COMPONENT moneymenu
#include "\x\cba\addons\main\script_macros_mission.hpp"

#include "..\dialog\defines.hpp";
disableSerialization;

_target = uiNamespace getVariable "grad_moneymenu_currentTarget";
if (isNil "_target") exitWith {ERROR("Recipient is nil.")};

_mode = uiNamespace getVariable "grad_moneymenu_currentMode";
if (isNil "_mode") exitWith {ERROR("Mode is nil.")};

_recipient = uiNamespace getVariable "grad_moneymenu_currentRecipient";
if (isNil "_recipient") exitWith {ERROR("Recipient is nil.")};


_dialog = findDisplay grad_moneymenu_DIALOG;
_inputBox = _dialog displayCtrl grad_moneymenu_input;
_amount = round (parseNumber (ctrlText _inputBox));

if (_mode in ["ATM_TRANSFER","DIRECT_SEND"]) then {
    _playerList = _dialog displayCtrl grad_moneymenu_recipient;
    _lbData = _playerList lbData (lbCursel _playerList);
    _recipient = if (_lbData == "") then {objNull} else {[_lbData] call BIS_fnc_getUnitByUID};

    uiNamespace setVariable ["grad_moneymenu_currentRecipient", _recipient];
};

if (isNull _recipient) exitWith {
    ["Error: Coult not find recipient."] call grad_moneymenu_fnc_formattedHint;
};

_money = switch (true) do {
    case (_mode == "TAKE"): {
        _target getVariable ["grad_lbm_myFunds",0];
    };

    case (_mode in ["ATM_WITHDRAW","ATM_TRANSFER"]): {
        player getVariable ["grad_moneymenu_myBankBalance",0];
    };

    default {
        player getVariable ["grad_lbm_myFunds",0];
    };
};

//not enough money
if (_money < _amount) then {
  _amount = _money;
};

//invalid input
if (_amount <= 0) exitWith {
    player say "AddItemFailed";
    [_dialog,_inputBox] spawn {
        disableSerialization;
        params ["_dialog","_inputBox"];

        _inputBox ctrlSetTextColor [1,0,0,1];
        sleep 0.4;
        if (isNull _dialog) exitWith {};
        _inputBox ctrlSetTextColor [1,1,1,1];
    };
};

[_target, _recipient, _amount, _mode] call grad_moneymenu_fnc_sendMoney;
closeDialog grad_moneymenu_DIALOG;
