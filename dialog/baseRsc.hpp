class grad_mm_RscBackground {
	idc = -1;
	type = CT_STATIC;
	style = ST_HUD_BACKGROUND;
	text = "";
	colorText[] = {0, 0, 0, 0};
	font = "PuristaMedium";
	sizeEx = 0.04 * TEXT_SCALE;
	shadow = 0;
	colorBackground[] = {0, 0, 0, 0.6};
};

class grad_mm_RscText {

	idc = -1;
	type = CT_STATIC;
	style = ST_LEFT;
	colorBackground[] = { 1 , 1 , 1 , 0 };
	colorText[] = { 1 , 1 , 1 , 1 };
	font = "PuristaMedium";
	sizeEx = 0.04 * TEXT_SCALE;
	h = 0.25;
	text = "";
};

class grad_mm_RscTextRight {

	idc = -1;
	type = CT_STATIC;
	style = ST_RIGHT;
	colorBackground[] = { 1 , 1 , 1 , 0 };
	colorText[] = { 1 , 1 , 1 , 1 };
	font = "PuristaMedium";
	sizeEx = 0.04 * TEXT_SCALE;
	h = 0.25;
	text = "";
};

class grad_mm_RscStructuredText {
	access = 0;
    idc = -1;
	type = CT_STRUCTURED_TEXT;
	style = ST_LEFT;
    sizeEx = 0.04 * TEXT_SCALE;
	colorText[] = {1, 1, 1, 1};
    colorBackground[] = {0,0,0,0};
	class Attributes
	{
		font = "PuristaMedium";
		color = "#ffffff";
		align = "left";
		shadow = 1;
	};
	x = 0;
	y = 0;
	h = 0.035;
	w = 0.1;
	text = "";
	size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	shadow = 1;
};

class grad_mm_RscStructuredTextRight: grad_mm_RscStructuredText {
	style = ST_RIGHT;
    class Attributes: Attributes {
        font = "PuristaMedium";
        color = "#ffffff";
        align = "right";
        shadow = 1;
    };
};

class grad_mm_RscButton {
    access = 0;
    type = CT_BUTTON;
    text = "";
    colorText[] = {1,1,1,1};
    colorDisabled[] = {1,1,1,0.1};
    colorBackground[] = {0,0,0,0.5};
    colorFocused[] = {1,1,1,0.5};
    colorBackgroundActive[] = {1,1,1,0.8}; // hover
    colorBackgroundDisabled[] = {0.3,0.3,0.3,1};
    colorBackgroundFocused[] = {0,0,0,0.5};
    colorShadow[] = {0,0,0,0};
    colorBorder[] = {0,0,0,1};
    soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter", 0.09, 1};
    soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush", 0.09, 1};
    soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick", 0.09, 1};
    soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape", 0.09, 1};
    animTextureDefault = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
    animTextureNormal = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
    animTextureDisabled = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
    animTextureOver = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\over_ca.paa";
    animTextureFocused = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\focus_ca.paa";
    animTexturePressed = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\down_ca.paa";
    style = 0;
    x = 0;
    y = 0;
    w = 0.055589;
    h = 0.039216;
    shadow = 0;
    font = "PuristaMedium";
    sizeEx = 0.04;
    offsetX = 0.003;
    offsetY = 0.003;
    offsetPressedX = 0.002;
    offsetPressedY = 0.002;
    borderSize = 0;
};

class grad_mm_RscCloseButton {
    access = 0;
    type = CT_BUTTON;
    action = "closeDialog 0";
    text = "X";
    colorText[] = {1,1,1,1};
    colorDisabled[] = {1,1,1,0.25};
    colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0])",1};
    colorFocused[] = {1,1,1,0.5};
    colorBackgroundActive[] = {1,1,1,0.8}; // hover
    colorBackgroundDisabled[] = {0.3,0.3,0.3,1};
    colorBackgroundFocused[] = {1,1,1,0};
    colorShadow[] = {0,0,0,0};
    colorBorder[] = {0,0,0,1};
    soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter", 0.09, 1};
    soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush", 0.09, 1};
    soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick", 0.09, 1};
    soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape", 0.09, 1};
    animTextureDefault = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
    animTextureNormal = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
    animTextureDisabled = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
    animTextureOver = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\over_ca.paa";
    animTextureFocused = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\focus_ca.paa";
    animTexturePressed = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\down_ca.paa";
    style = 2;
    x = 0;
    y = 0;
    w = 0.055589;
    h = 0.039216;
    shadow = 0;
    font = "PuristaMedium";
    sizeEx = 0.04;
    offsetX = 0.003;
    offsetY = 0.003;
    offsetPressedX = 0.002;
    offsetPressedY = 0.002;
    borderSize = 0;
};

class grad_mm_RscEdit {
	access = 0;
	type = CT_EDIT;
	style = ST_LEFT + ST_FRAME;
	x = 0;
	y = 0;
	h = 0.04;
	w = 0.2;
	colorBackground[] = {0, 0, 0, 1};
	colorText[] = {0.95, 0.95, 0.95, 1};
	colorDisabled[] = {1, 1, 1, 0.25};
	colorSelection[] =
	{
		"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",
		1
	};
	autocomplete = "";
	text = "";
	size = 0.2;
	font = "PuristaMedium";
	shadow = 0;
	sizeEx = 0.04 * TEXT_SCALE;
	canModify = 1;
};

class grad_mm_RscScrollbar {
	color[] = {1, 1, 1, 1};
	colorActive[] = {"(profileNamespace getVariable ['GUI_BCG_RGB_R', 0.69])", "(profileNamespace getVariable ['GUI_BCG_RGB_G', 0.75])", "(profileNamespace getVariable ['GUI_BCG_RGB_B', 0.5])", 1};
	colorDisabled[] = {};
	arrowEmpty = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_ca.paa";
	arrowFull = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_active_ca.paa";
	thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
	border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
};

class grad_mm_RscCombo {
	idc = -1;
	type = CT_COMBO;
	style = ST_CENTER;
	sizeEx = 0.042;
	font = puristaMedium;
	rowHeight = 0.04;
	wholeHeight = 0.48;
	maxHistoryDelay = 0;
	autoScrollDelay = 5;
	autoScrollSpeed = -1;
	autoScrollRewind = 0;
	color[] = {0, 0, 0, 0};
	colorText[] = {1, 1, 1, 1};
	colorSelect[] = {0, 0, 0, 1};
	colorDisabled[] = {};
	colorBackground[] = {0, 0, 0, 1};
	colorSelectBackground[] = {"(profileNamespace getVariable ['GUI_BCG_RGB_R', 0.69])", "(profileNamespace getVariable ['GUI_BCG_RGB_G', 0.75])", "(profileNamespace getVariable ['GUI_BCG_RGB_B', 0.5])", 1};
	colorSelectBackground2[] = {"(profileNamespace getVariable ['GUI_BCG_RGB_R', 0.69])", "(profileNamespace getVariable ['GUI_BCG_RGB_G', 0.75])", "(profileNamespace getVariable ['GUI_BCG_RGB_B', 0.5])", 1};
	colorScrollbar[] = {"(profileNamespace getVariable ['GUI_BCG_RGB_R', 0.69])", "(profileNamespace getVariable ['GUI_BCG_RGB_G', 0.75])", "(profileNamespace getVariable ['GUI_BCG_RGB_B', 0.5])", 1};
	soundSelect[] = {"\dss_sfx\Dialogs\SubSel.ogg", 0, 1};
	soundExpand[] = {"\dss_sfx\Dialogs\Hover.ogg", 0, 1};
	soundCollapse[] = {"\dss_sfx\Dialogs\Hover.ogg", 0, 1};
	arrowEmpty = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_ca.paa";
	arrowFull = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_active_ca.paa";
	class ComboScrollbar : grad_mm_RscScrollbar {
		color[] = {1, 1, 1, 1};
		colorActive[] = {0, 0, 0, 1};
		colorDisabled[] = {};
		autoScrollEnabled = 1;
		arrowEmpty = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_ca.paa";
		arrowFull = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_active_ca.paa";
		thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
		border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
	};
};
