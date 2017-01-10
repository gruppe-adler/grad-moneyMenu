params ["_condition", "_target", ["_params",[]], ["_inherit", false]];

if (!hasInterface) exitWith {};
if (isNil "_target") exitWith {};
if ((typeName _target) == "OBJECT" && {isNull _target}) exitWith {};

if (isNil "grad_moneymenu_atmObjects") then {grad_moneymenu_atmObjects = [missionConfigFile >> "CfgGradMoneymenu" >> "atmObjects", "array", 0] call CBA_fnc_getConfigEntry};

_actionDesc = if (_target in grad_moneymenu_atmObjects) then {"Withdraw money"} else {"Take money"};
_mode = if (_target in grad_moneymenu_atmObjects) then {"ATM_WITHDRAW"} else {"TAKE"};
_code = compile (format ["[_this select 0,'%1'] call grad_moneymenu_fnc_loadMenu",_mode]);

_action = [
    "GRAD_moneymenu_mainTakeAction",
    _actionDesc,
    (missionNamespace getVariable ["GRAD_moneymenu_moduleRoot",[] call GRAD_moneymenu_fnc_getModuleRoot]) + "\data\moneyIcon.paa",
    _code,
    _condition,
    {},
    _params
] call ace_interact_menu_fnc_createAction;

if (typeName _target == "STRING") then {
    [_target,0,["ACE_MainActions"],_action,_inherit] call ace_interact_menu_fnc_addActionToClass;
};

if (typeName _target == "OBJECT") then {
    [_target,0,["ACE_MainActions"],_action] call ace_interact_menu_fnc_addActionToObject;
};
