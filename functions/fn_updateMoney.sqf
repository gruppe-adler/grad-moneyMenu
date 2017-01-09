#include "..\dialog\defines.hpp"
disableSerialization;

params [["_target",player],["_mode","GIVE"]];

_dialog = findDisplay grad_moneymenu_DIALOG;
_myMoney = _dialog displayCtrl grad_moneymenu_myfunds;
_myMoneyDesc = _dialog displayCtrl grad_moneymenu_myfundsDesc;

_money = if (_mode in ["ATM_WITHDRAW","ATM_TRANSFER"]) then {player getVariable ["grad_moneymenu_myBankBalance",0]} else {_target getVariable ["grad_lbm_myFunds",0]};

switch (true) do {
    case (_mode in ["ATM_WITHDRAW","ATM_TRANSFER"]): {
        _myMoneyDesc ctrlSetText "My Account:";
    };

    case (_target == player): {
        _myMoneyDesc ctrlSetText "My Funds:";
    };

    default {
        _myMoneyDesc ctrlSetText "Funds:";
    };
};

_text = format ["%1 Cr", _money];
_myMoney ctrlSetText _text;
