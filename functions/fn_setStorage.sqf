params ["_object", "_owner"];
private ["_condition","_params"];

if (!isNil "_owner") then {

    // owner is UID
    if (_owner isEqualType "") then {
        _params = [_owner call bis_fnc_getUnitByUID];

        _object setVariable ["grad_moneymenu_owner",_owner];
        _condition = {(getPlayerUID (_this select 1)) isEqualTo ((_this select 0) getVariable ["grad_moneymenu_owner",""])};

    } else {
        _params = [_owner];

        // owner is player
        if (isPlayer _owner) then {
            _object setVariable ["grad_moneymenu_owner",getPlayerUID _owner];
            _condition = {(getPlayerUID (_this select 1)) isEqualTo ((_this select 0) getVariable ["grad_moneymenu_owner",""])};

        // owner is AI
        } else {
            _object setVariable ["grad_moneymenu_owner",_owner];
            _condition = {(_this select 1) isEqualTo ((_this select 2) select 0)};
        };
    };


} else {
    _condition = {true};
    _params = [];
};

_object setVariable ["grad_moneymenu_isStorage",true,true];

[_condition,_object,_params] call grad_moneymenu_fnc_addGiveAction;
[_condition,_object,_params] call grad_moneymenu_fnc_addTakeAction;
