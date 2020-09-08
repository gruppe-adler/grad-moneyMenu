params ["_unit", ["_funds",0], ["_addToBankAccount",false]];

if (!local _unit) exitWith {_this remoteExec ["GRAD_moneymenu_fnc_addFunds",_unit,false]};

private _varName = ["grad_lbm_myFunds","grad_moneymenu_myBankBalance"] select _addToBankAccount;
_unit setVariable [_varName, ((_unit getVariable [_varName,0]) + _funds) max 0, true];

_unit getVariable _varName
