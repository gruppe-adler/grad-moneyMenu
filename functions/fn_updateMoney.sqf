#include "..\dialog\defines.hpp"
disableSerialization;

params [["_target",player]];

_money = _target getVariable ["grad_lbm_myFunds",0];

_dialog = findDisplay grad_moneymenu_DIALOG;
_myMoney = _dialog displayCtrl grad_moneymenu_myfunds;
_myMoneyDesc = _dialog displayCtrl grad_moneymenu_myfundsDesc;

if (_target == player) then {
    _myMoneyDesc ctrlSetText "My Funds:";
} else {
    _myMoneyDesc ctrlSetText "Funds:";
};

_text = format ["%1 Cr", _money];
_myMoney ctrlSetText _text;
