GRAD_moneymenu_moduleRoot = [] call GRAD_moneymenu_fnc_getModuleRoot;

grad_moneymenu_canGiveDefault = ([missionConfigFile >> "CfgGradBuymenu" >> "canGiveDefault", "number", 1] call CBA_fnc_getConfigEntry) == 1;


if (!hasInterface) exitWith {};

[{!isNull player}, {

    //take action
    _action = [
        "GRAD_moneymenu_mainTakeAction",
        "Take money",
        GRAD_moneymenu_moduleRoot + "\data\moneyIcon.paa",
        {[_this select 0,"TAKE"] call grad_moneymenu_fnc_loadMenu},
        {captive (_this select 0)}
    ] call ace_interact_menu_fnc_createAction;
    ["CAManBase",0,["ACE_MainActions"],_action,true] call ace_interact_menu_fnc_addActionToClass;

    //give action
    _action = [
        "GRAD_moneymenu_mainGiveAction",
        "Give money",
        GRAD_moneymenu_moduleRoot + "\data\moneyIcon.paa",
        {[_this select 0] call grad_moneymenu_fnc_loadMenu},
        {player getVariable ["grad_moneymenu_canGive", grad_moneymenu_canGiveDefault]}
    ] call ace_interact_menu_fnc_createAction;
    ["CAManBase",0,["ACE_MainActions"],_action,true] call ace_interact_menu_fnc_addActionToClass;

}, []] call CBA_fnc_waitUntilAndExecute;
