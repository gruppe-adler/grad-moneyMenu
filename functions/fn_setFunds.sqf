params ["_unit", ["_funds",0], ["_setBankAccount",false]];

private _varName = ["grad_lbm_myFunds","grad_moneymenu_myBankBalance"] select _setBankAccount;
_unit setVariable [_varName, _funds, true];
