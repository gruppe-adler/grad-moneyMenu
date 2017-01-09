params ["_target", "_recipient", ["_amount",0], ["_mode","GIVE"]];

if (_amount <= 0) exitWith {player say "AddItemFailed"};

if (_mode == "GIVE") then {
    player setVariable ["grad_lbm_myFunds", ((player getVariable ["grad_lbm_myFunds",0]) - _amount) max 0, true];
};

[_target,_recipient,_amount,_mode] remoteExec ["grad_moneymenu_fnc_receiveMoney",0,false];

if (player != _recipient) then {
    _actionDesc = if (_target isKindOf "Man") then {format ["given to %1", name _target]} else {"put into storage"};
    [[format ["%1 Cr", _amount], "#00FF00"], [_actionDesc], [format ["%1 Cr left.", player getVariable ["grad_lbm_myFunds",0]]]] call grad_moneymenu_fnc_formattedHint;
};
