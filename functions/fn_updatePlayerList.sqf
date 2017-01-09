#include "..\dialog\defines.hpp"
disableSerialization;

_dialog = findDisplay grad_moneymenu_DIALOG;
_list = _dialog displayCtrl grad_moneymenu_recipient;

_listIndex = 0;
{
    if (_x != player) then {
        _list lbAdd (name _x);

        _list lbSetData [_listIndex, getplayerUID _x];
        _listIndex = _listIndex + 1;
    };
} forEach (call BIS_fnc_listPlayers);

lbSort _list;

if (lbSize _list > 0) then {_list lbSetCurSel 0};
