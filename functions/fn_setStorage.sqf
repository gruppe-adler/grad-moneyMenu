params ["_object", "_owner"];
private ["_condition","_params"];

if (!isNil "_owner") then {
    _object setVariable ["grad_moneymenu_owner",_owner];
    _condition = {player == (_this select 2) select 0};
    _params = [_owner];
} else {
    _condition = {true};
    _params = [];
};

[_condition,_object,_params] call grad_moneymenu_fnc_addGiveAction;
[_condition,_object,_params] call grad_moneymenu_fnc_addTakeAction;
