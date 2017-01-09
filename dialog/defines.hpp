//CONTROLS =====================================================================
#define grad_moneymenu_DIALOG           40000
#define grad_moneymenu_title            40001
#define grad_moneymenu_myfunds          40010
#define grad_moneymenu_myfundsDesc      40011
#define grad_moneymenu_input            40020
#define grad_moneymenu_okbutton         40030
#define grad_moneymenu_recipient        40040


//DIMENSIONS AND POSITIONS =====================================================

#define grad_moneymenu_BG_W             (0.4 * X_SCALE)

#define grad_moneymenu_Item_H           (0.025 * Y_SCALE)
#define grad_moneymenu_Item_W           (0.025 * X_SCALE)
#define grad_moneymenu_ItemSpace_Y      (0.0025 * SZ_SCALE)

#define grad_moneymenu_Padding_Y        (0.5 * grad_moneymenu_Item_H)
#define grad_moneymenu_Padding_X        (0.5 * grad_moneymenu_Item_W)

#define grad_moneymenu_Info_W           (grad_moneymenu_BG_W - 2*grad_moneymenu_Padding_X)
#define grad_moneymenu_Input_W          (0.45 * grad_moneymenu_Info_W)
#define grad_moneymenu_Recipient_W      (0.5 * grad_moneymenu_Info_W)

#define grad_moneymenu_Button_W         (0.15 * X_SCALE)

#define grad_moneymenu_CloseButton_W    (grad_moneymenu_Item_H - (2 * grad_moneymenu_ItemSpace_Y))
#define grad_moneymenu_TopBar_Y         (grad_moneymenu_BG_Y - grad_moneymenu_Item_H - grad_moneymenu_ItemSpace_Y)

#define grad_moneymenu_BG_H             (2*grad_moneymenu_Item_H + 3*grad_moneymenu_Padding_Y)
#define grad_moneymenu_BG_X             CENTER(1, grad_moneymenu_BG_W)
#define grad_moneymenu_BG_Y             CENTER(1, grad_moneymenu_BG_H)
