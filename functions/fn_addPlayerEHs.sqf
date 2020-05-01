player addEventHandler ["Killed", {
    params ["_unit"];

    player setVariable ["grad_moneymenu_myFundsOnDeath",[player] call grad_moneymenu_fnc_getFunds];

    // if player keeps money on death, save in temp variable so that corpse cannot be looted during respawn time
    if (!grad_moneymenu_playersLoseMoneyOnDeath) then {
        [player,0] call grad_moneymenu_fnc_setFunds;
    };
}];

player addEventHandler ["Respawn",{
    params ["_unit", "_corpse"];

    // use addFunds here in case user has their own respawn event handler, that fired first and added money
    if (grad_moneymenu_playersLoseMoneyOnDeath) then {
        [_unit,-(_unit getVariable ["grad_moneymenu_myFundsOnDeath",0])] call grad_moneymenu_fnc_addFunds;
    } else {
        [_unit,_unit getVariable ["grad_moneymenu_myFundsOnDeath",0]] call grad_moneymenu_fnc_addFunds;
    };
}];
