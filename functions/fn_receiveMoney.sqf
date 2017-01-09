params ["_target","_recipient", ["_amount",0], ["_mode", "GIVE"]];

if (local _recipient) then {
    _recipient setVariable ["grad_lbm_myFunds", (_recipient getVariable ["grad_lbm_myFunds",0]) + _amount, true];

    if (_recipient == player) then {
        if (_mode == "GIVE") then {
            [[format ["%1 gave you", (name _target)]], [format ["%1 Cr.", _amount], "#00FF00"], [format ["%1 Cr total.", player getVariable ["grad_lbm_myFunds",0]]]] call grad_moneymenu_fnc_formattedHint;
        } else {
            [[format ["%1 Cr.", _amount], "#00FF00"], [format ["taken from %1", (name _target)]], [format ["%1 Cr total.", player getVariable ["grad_lbm_myFunds",0]]]] call grad_moneymenu_fnc_formattedHint;
        };
    };
};

if (_mode == "TAKE" && player == _target) then {
    [[format ["%1 Cr.", _amount], "#00FF00"], [format ["taken from you by %1", (name _recipient)]], [format ["%1 Cr left.", player getVariable ["grad_lbm_myFunds",0]]]] call grad_moneymenu_fnc_formattedHint;
};
