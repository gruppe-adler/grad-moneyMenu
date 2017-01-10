#ifndef MODULES_DIRECTORY
    #define MODULES_DIRECTORY modules
#endif

class GRAD_moneymenu {
    class common {
        file = MODULES_DIRECTORY\grad-moneyMenu\functions;

        class addCheckAction {};
        class addFunds {};
        class addGiveAction {};
        class addSendAction {};
        class addTakeAction {};
        class addTransferAction {};
        class checkSend {};
        class formattedHint {};
        class getModuleRoot {};
        class initModule {postInit = 1;};
        class loadMenu {};
        class receiveMoney {};
        class sendMoney {};
        class setCanGive {};
        class setCanTakeFromDead {};
        class setCanTakeFromSurrendered {};
        class setStorage {};
        class setTransferToSides {};
        class updateMoney {};
        class updatePlayerList {};
    };
};
