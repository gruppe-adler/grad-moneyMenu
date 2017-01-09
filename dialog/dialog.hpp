class grad_moneyMenu {
  idd = grad_moneymenu_DIALOG;
  movingEnable = true;
  enableSimulation = true;

  class ControlsBackground {
    class MainBackground: grad_mm_RscBackground {
      idc = -1;

      x = grad_moneymenu_BG_X;
      y = grad_moneymenu_BG_Y;
      w = grad_moneymenu_BG_W;
      h = grad_moneymenu_BG_H;
    };

    class TopBar: grad_mm_RscBackground {
      idc = -1;
      moving = true;

      x = grad_moneymenu_BG_X;
      y = grad_moneymenu_TopBar_Y;
      w = grad_moneymenu_BG_W;
      h = grad_moneymenu_Item_H;
      colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0])",1};
    };

    class DialogTitleText: grad_mm_RscText {
      idc = grad_moneymenu_title;
      text = "GIVE MONEY TO (NAME)";

      x = grad_moneymenu_BG_X;
      y = grad_moneymenu_TopBar_Y;
      w = grad_moneymenu_BG_W;
      h = grad_moneymenu_Item_H;
    };

    class MyFundsText: grad_mm_RscText {
      idc = grad_moneymenu_myfundsDesc;
      text = "My Funds:";
      colorBackground[] = {0,0,0,0.5};
      x = grad_moneymenu_BG_X + grad_moneymenu_Padding_X;
      y = grad_moneymenu_BG_Y + grad_moneymenu_Padding_Y;
      w = grad_moneymenu_Info_W;
      h = grad_moneymenu_Item_H;
    };

    class MyFundsAmount: grad_mm_RscTextRight {
      idc = grad_moneymenu_myfunds;
      text = "0 Cr";
      x = grad_moneymenu_BG_X + grad_moneymenu_Padding_X;
      y = grad_moneymenu_BG_Y + grad_moneymenu_Padding_Y;
      w = grad_moneymenu_Info_W;
      h = grad_moneymenu_Item_H;
    };

    class GiveBG: grad_mm_RscText {
      idc = -1;
      text = "Amount:";
      colorBackground[] = {0,0,0,0.5};
      x = grad_moneymenu_BG_X + grad_moneymenu_Padding_X;
      y = grad_moneymenu_BG_Y + grad_moneymenu_Padding_Y + grad_moneymenu_Item_H + grad_moneymenu_Padding_Y;
      w = grad_moneymenu_Info_W;
      h = grad_moneymenu_Item_H;
    };

    class GiveTextRight: grad_mm_RscTextRight {
      idc = -1;
      text = "Cr";
      x = grad_moneymenu_BG_X + grad_moneymenu_Padding_X;
      y = grad_moneymenu_BG_Y + grad_moneymenu_Padding_Y + grad_moneymenu_Item_H + grad_moneymenu_Padding_Y;
      w = grad_moneymenu_Info_W;
      h = grad_moneymenu_Item_H;
    };
  };

  class Controls {
    class CloseButton: grad_mm_RscCloseButton {
      idc = -1;
      x = grad_moneymenu_BG_X + grad_moneymenu_BG_W - grad_moneymenu_ItemSpace_Y - grad_moneymenu_CloseButton_W;
      y = grad_moneymenu_TopBar_Y + grad_moneymenu_ItemSpace_Y;
      w = grad_moneymenu_CloseButton_W;
      h = grad_moneymenu_CloseButton_W;
    };

    class InputBox: grad_mm_RscEdit {
      idc = grad_moneymenu_input;
      text = "0";
      style = ST_RIGHT;
      x = grad_moneymenu_BG_X + grad_moneymenu_Info_W - (grad_moneymenu_Padding_X) - grad_moneymenu_Input_W;
      y = grad_moneymenu_BG_Y + grad_moneymenu_Padding_Y + grad_moneymenu_Item_H + grad_moneymenu_Padding_Y;
      w = grad_moneymenu_Input_W;
      h = grad_moneymenu_Item_H;
    };

    class OKButton: grad_mm_RscButton {
      idc = grad_moneymenu_okbutton;
      action = "[] call grad_moneymenu_fnc_checkSend";
      text = "OK";
      sizeEx = 0.04 * TEXT_SCALE;
      style = ST_RIGHT;

      x = grad_moneymenu_BG_X + grad_moneymenu_BG_W - grad_moneymenu_Button_W;
      y = grad_moneymenu_BG_Y + grad_moneymenu_BG_H + grad_moneymenu_ItemSpace_Y;
      w = grad_moneymenu_Button_W;
      h = grad_moneymenu_Item_H;
    };
  };
};

class grad_moneyMenu_ATM: grad_moneyMenu {
    idd = grad_moneymenu_DIALOG;
    movingEnable = true;
    enableSimulation = true;

    class ControlsBackground: ControlsBackground {
        class MainBackground: MainBackground {
            h = grad_moneymenu_BG_H + grad_moneymenu_Padding_Y + grad_moneymenu_Item_H;
        };

        class TopBar: TopBar {};
        class DialogTitleText: DialogTitleText {};
        class MyFundsText: MyFundsText {};
        class MyFundsAmount: MyFundsAmount {};
        class GiveBG: GiveBG {};
        class GiveTextRight: GiveTextRight {};

        class RecipientBG: grad_mm_RscText {
            idc = -1;
            text = "Recipient:";
            colorBackground[] = {0,0,0,0.5};
            x = grad_moneymenu_BG_X + grad_moneymenu_Padding_X;
            y = grad_moneymenu_BG_Y + grad_moneymenu_Padding_Y + 2*grad_moneymenu_Item_H + 2*grad_moneymenu_Padding_Y;
            w = grad_moneymenu_Info_W;
            h = grad_moneymenu_Item_H;
        };
    };

    class Controls: Controls {
        class CloseButton: CloseButton {};

        class InputBox: InputBox {};

        class OKButton: OKButton {
            y = grad_moneymenu_BG_Y + grad_moneymenu_BG_H + grad_moneymenu_ItemSpace_Y + grad_moneymenu_Padding_Y + grad_moneymenu_Item_H;
        };

        class Category: grad_mm_RscCombo {
            idc = grad_moneymenu_recipient;

            x = grad_moneymenu_BG_X + grad_moneymenu_Padding_X + grad_moneymenu_Info_W - grad_moneymenu_Recipient_W;
            y = grad_moneymenu_BG_Y + grad_moneymenu_Padding_Y + 2*grad_moneymenu_Item_H + 2*grad_moneymenu_Padding_Y;
            w = grad_moneymenu_Recipient_W;
            h = grad_moneymenu_Item_H;
        };
    };
};
