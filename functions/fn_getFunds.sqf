params ["_unit",["_getBankAccount",false]];

private _varName = ["grad_lbm_myFunds","grad_moneymenu_myBankBalance"] select _getBankAccount;
private _funds = _unit getVariable [_varName,0];

_funds
