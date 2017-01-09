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

_rule = parseText "<t align='center'><t color='#708090'>-----------------------------------------------------<br /></t></t>";
_lineBreak = parseText "<br />";

_hintArray = [_rule];
{
  _line = _x select 0;
  if (count _x == 2) then {
    _color = _x select 1;
  } else {
    _color = "#ffffff";
  };
  _text = parseText format ["<t align='center' size='1.4' color='%1'>%2</t>", _color, _line];
  _hintArray pushBack _text;
  _hintArray pushBack _lineBreak;
} forEach _this;
_hintArray pushBack _rule;
hint composeText _hintArray;

[] spawn {
  sleep 4;
  hint "";
};
