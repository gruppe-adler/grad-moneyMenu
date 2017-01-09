/*  Creates a pre-formatted hint
*
*   Parameters:
*   0:  Array:
*     0:  text line 1 (string)
*     1:  color line 1 (string, optional)
*   1:  Array:
*     0:  text line 2 (string)
*     1:  color line 2 (string, optional)
*   2:  Array:
*     0:  text line 3 (string)
*     1:  color line 3 (string, optional)
*   etc..
*/

private ["_line", "_color"];

_rule = parseText "<t align='center'><t color='#708090'>------------------------------------------------------<br /></t></t>";
_lineBreak = parseText "<br />";

_hintArray = [_rule];
{
    _data = if (typeName _x == "ARRAY") then {_x} else {[_x]};

    _line = _data select 0;
    if (count _data == 2) then {
        _color = _data select 1;
    } else {
        _color = "#ffffff";
    };

    _text = parseText format ["<t size='1.4' color='%1'>%2</t>", _color, _line];
    _hintArray pushBack _text;
    _hintArray pushBack _lineBreak;
} forEach _this;

_hintArray pushBack _rule;
hint composeText _hintArray;
