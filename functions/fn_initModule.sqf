GRAD_moneymenu_moduleRoot = [] call GRAD_moneymenu_fnc_getModuleRoot;

grad_moneymenu_canGiveDefault = ([missionConfigFile >> "CfgGradBuymenu" >> "canGiveDefault", "number", 1] call CBA_fnc_getConfigEntry) == 1;
grad_moneymenu_startMoney = [missionConfigFile >> "CfgGradBuymenu" >> "startMoney", "number", 0] call CBA_fnc_getConfigEntry;

if (!hasInterface) exitWith {};

[{!isNull player}, {

    //start money
    player setVariable ["grad_lbm_myFunds", (player getVariable ["grad_lbm_myFunds",0]) + grad_moneymenu_startMoney, true];

    //interactions
    [{captive (_this select 0) || !alive (_this select 0)}, "CAManBase", [], true] call grad_moneymenu_fnc_addTakeAction;
    [{player getVariable ["grad_moneymenu_canGive", grad_moneymenu_canGiveDefault] && alive (_this select 0)}, "CAManBase", [], true] call grad_moneymenu_fnc_addGiveAction;

}, []] call CBA_fnc_waitUntilAndExecute;
