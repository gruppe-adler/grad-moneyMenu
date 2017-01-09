#include "..\dialog\defines.hpp"
disableSerialization;

params ["_target",["_mode","GIVE"]];

createDialog "grad_moneyMenu";
_dialog = findDisplay grad_moneymenu_DIALOG;
_title = _dialog displayCtrl grad_moneymenu_title;
_myMoney = _dialog displayCtrl grad_moneymenu_myfunds;

uiNamespace setVariable ["grad_moneymenu_currentMode", _mode];
uiNamespace setVariable ["grad_moneymenu_currentTarget",_target];

switch (_mode) do {
    case ("GIVE"): {
        uiNamespace setVariable ["grad_moneymenu_currentRecipient", _target];
        _secure = if (!isNull (_target getVariable ["grad_moneymenu_owner",objNull])) then {"secured"} else {"unsecured"};
        _text = if (_target isKindOf "Man") then {toUpper format ["Give Money to %1", (name _target)]} else {toUpper format ["Store Money (%1)", _secure]};
        _title ctrlSetText _text;
        [] call grad_moneymenu_fnc_updateMoney;
    };

    case ("TAKE"): {
        uiNamespace setVariable ["grad_moneymenu_currentRecipient", player];
        _secure = if (!isNull (_target getVariable ["grad_moneymenu_owner",objNull])) then {"secured"} else {"unsecured"};
        _text = if (_target isKindOf "Man") then {toUpper format ["Take money from %1", (name _target)]} else {toUpper format ["Take money from storage (%1)", _secure]};
        _title ctrlSetText _text;
        [_target] call grad_moneymenu_fnc_updateMoney;
    };
};
