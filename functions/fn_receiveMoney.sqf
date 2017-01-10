params ["_target","_recipient", ["_amount",0], ["_mode", "GIVE"],"_sender"];

if (local _recipient && _mode in ["GIVE","DIRECT_SEND"]) then {

    _recipient setVariable ["grad_lbm_myFunds", (_recipient getVariable ["grad_lbm_myFunds",0]) + _amount, true];

    if (player == _recipient) then {
        [
            format ["<t color='#00FF00'>%1</t> Cr received from %2.", _amount, (name _sender)],
            format ["Wallet: <t color='#00FF00'>%1</t> Cr", player getVariable ["grad_lbm_myFunds",0]]
        ] call grad_moneymenu_fnc_formattedHint;
    };
};

if (local _target && _mode == "TAKE") then {
    _target setVariable ["grad_lbm_myFunds", ((_target getVariable ["grad_lbm_myFunds",0]) - _amount) max 0, true];

    if (player == _target) then {
        [
            format ["<t color='#00FF00'>%1</t> Cr taken from you by %2.", _amount, (name _recipient)],
            format ["Wallet: <t color='#00FF00'>%1</t> Cr", player getVariable ["grad_lbm_myFunds",0]]
        ] call grad_moneymenu_fnc_formattedHint;
    };
};

if (local _recipient && _mode == "TAKE") then {
    _recipient setVariable ["grad_lbm_myFunds", (_recipient getVariable ["grad_lbm_myFunds",0]) + _amount, true];

    if (player == _recipient) then {
        _actionDesc = if (_target isKindOf "Man") then {format ["taken from %1", name _target]} else {"taken from storage"};
        [
            format ["<t color='#00FF00'>%1</t> Cr %2.", _amount,_actionDesc],
            format ["Wallet: <t color='#00FF00'>%1</t> Cr", player getVariable ["grad_lbm_myFunds",0]]
        ] call grad_moneymenu_fnc_formattedHint;
    };
};

if (local _recipient && _mode == "ATM_TRANSFER") then {
    _recipient setVariable ["grad_moneymenu_myBankBalance", (_recipient getVariable ["grad_moneymenu_myBankBalance",0]) + _amount, true];
    _latestReceipts = _recipient getVariable ["grad_moneymenu_latestReceipts",[]];
    _latestReceipts pushBack [_amount,name _sender];
    while {count _latestReceipts > 3} do {
        _latestReceipts deleteAt 0;
    };
};
