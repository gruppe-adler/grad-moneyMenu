params ["_condition", "_target", ["_params",[]], ["_inherit", false]];

if (!hasInterface) exitWith {};
if (isNil "_target") exitWith {};
if ((typeName _target) == "OBJECT" && {isNull _target}) exitWith {};

_actionDesc = if (_target isKindOf "Man") then {"Give money"} else {"Store money"};

_action = [
    "GRAD_moneymenu_mainGiveAction",
    _actionDesc,
    (missionNamespace getVariable ["GRAD_moneymenu_moduleRoot",[] call GRAD_moneymenu_fnc_getModuleRoot]) + "\data\moneyIcon.paa",
    {[_this select 0] call grad_moneymenu_fnc_loadMenu},
    _condition,
    {},
    _params
] call ace_interact_menu_fnc_createAction;


if (typeName _target == "STRING") then {
    /*[_target,0] call ace_interact_menu_fnc_addMainAction;*/
    [_target,0,["ACE_MainActions"],_action,_inherit] call ace_interact_menu_fnc_addActionToClass;
};

if (typeName _target == "OBJECT") then {
    /*[typeOf _target,0] call ace_interact_menu_fnc_addMainAction;*/
    [_target,0,["ACE_MainActions"],_action] call ace_interact_menu_fnc_addActionToObject;
};
