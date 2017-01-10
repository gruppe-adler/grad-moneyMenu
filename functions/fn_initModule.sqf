GRAD_moneymenu_moduleRoot = [] call GRAD_moneymenu_fnc_getModuleRoot;

grad_moneymenu_canGiveDefault = ([missionConfigFile >> "CfgGradBuymenu" >> "canGiveDefault", "number", 1] call CBA_fnc_getConfigEntry) == 1;
grad_moneymenu_canTransferToSidesDefault = ([missionConfigFile >> "CfgGradBuymenu" >> "canTransferToSidesDefault", "array", []] call CBA_fnc_getConfigEntry) apply {call compile _x};
grad_moneymenu_canTakeFromDeadDefault = ([missionConfigFile >> "CfgGradBuymenu" >> "canTakeFromDeadDefault", "number", 1] call CBA_fnc_getConfigEntry) == 1;
grad_moneymenu_canTakeFromSurrenderedDefault = ([missionConfigFile >> "CfgGradBuymenu" >> "canTakeFromSurrenderedDefault", "number", 1] call CBA_fnc_getConfigEntry) == 1;
grad_moneymenu_startMoney = [missionConfigFile >> "CfgGradBuymenu" >> "startMoney", "number", 0] call CBA_fnc_getConfigEntry;
grad_moneymenu_startBankBalance = [missionConfigFile >> "CfgGradBuymenu" >> "startBankBalance", "number", 0] call CBA_fnc_getConfigEntry;
grad_moneymenu_atmObjects = [missionConfigFile >> "CfgGradBuymenu" >> "atmObjects", "array", ["Land_Atm_01_F"]] call CBA_fnc_getConfigEntry;

if (!hasInterface) exitWith {};

[{!isNull player}, {

    //variables
    player setVariable ["grad_lbm_myFunds", (player getVariable ["grad_lbm_myFunds",0]) + grad_moneymenu_startMoney, true];
    player setVariable ["grad_moneymenu_myBankBalance", (player getVariable ["grad_moneymenu_myBankBalance",0]) + grad_moneymenu_startBankBalance, true];
    player setVariable ["grad_moneymenu_latestReceipts",[]];

    //interactions
    [{(captive (_this select 0) && player getVariable ["grad_moneymenu_canTakeFromSurrendered",grad_moneymenu_canTakeFromSurrenderedDefault]) || (!alive (_this select 0) && player getVariable ["grad_moneymenu_canTakeFromDead",grad_moneymenu_canTakeFromDeadDefault])}, "CAManBase", [], true] call grad_moneymenu_fnc_addTakeAction;
    [{player getVariable ["grad_moneymenu_canGive", grad_moneymenu_canGiveDefault] && alive (_this select 0)}, "CAManBase", [], true] call grad_moneymenu_fnc_addGiveAction;
    [{true}, player, [], false] call grad_moneymenu_fnc_addCheckAction;
    {
        [{true}, _x, [], false] call grad_moneymenu_fnc_addTakeAction;
        [{true}, _x, [], false] call grad_moneymenu_fnc_addGiveAction;
        [{true}, _x, [], false] call grad_moneymenu_fnc_addTransferAction;
        [{true}, _x, [], false] call grad_moneymenu_fnc_addCheckAction;
    } forEach grad_moneymenu_atmObjects;

}, []] call CBA_fnc_waitUntilAndExecute;
