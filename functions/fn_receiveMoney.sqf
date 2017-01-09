params ["_target","_recipient", ["_amount",0], ["_mode", "GIVE"]];

if (local _recipient && _mode == "TAKE") then {
    _recipient setVariable ["grad_lbm_myFunds", (_recipient getVariable ["grad_lbm_myFunds",0]) + _amount, true];

    if (player == _recipient) then {
        _actionDesc = if (_target isKindOf "Man") then {format ["taken from %1", name _target]} else {"taken from storage"};
        [[format ["%1 Cr", _amount], "#00FF00"], [_actionDesc], [format ["%1 Cr total.", player getVariable ["grad_lbm_myFunds",0]]]] call grad_moneymenu_fnc_formattedHint;
    };
};

if (local _recipient && _mode == "GIVE") then {

    _recipient setVariable ["grad_lbm_myFunds", (_recipient getVariable ["grad_lbm_myFunds",0]) + _amount, true];

    if (player == _recipient) then {
        [[format ["%1 gave you", (name _target)]], [format ["%1 Cr.", _amount], "#00FF00"], [format ["%1 Cr total.", player getVariable ["grad_lbm_myFunds",0]]]] call grad_moneymenu_fnc_formattedHint;
    };
};

if (local _target && _mode == "TAKE") then {
    _target setVariable ["grad_lbm_myFunds", ((_target getVariable ["grad_lbm_myFunds",0]) - _amount) max 0, true];

    if (player == _target) then {
        [[format ["%1 Cr.", _amount], "#00FF00"], [format ["taken from you by %1", (name _recipient)]], [format ["%1 Cr left.", player getVariable ["grad_lbm_myFunds",0]]]] call grad_moneymenu_fnc_formattedHint;
    };
};
