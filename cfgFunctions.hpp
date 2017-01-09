#ifndef MODULES_DIRECTORY
    #define MODULES_DIRECTORY modules
#endif

class GRAD_moneymenu {
    class common {
        file = MODULES_DIRECTORY\grad-moneyMenu\functions;

        class addCheckAction {};
        class addFunds {};
        class addGiveAction {};
        class addTakeAction {};
        class addTransferAction {};
        class checkSend {};
        class formattedHint {};
        class getModuleRoot {};
        class initModule {postInit = 1;};
        class loadMenu {};
        class receiveMoney {};
        class sendMoney {};
        class setStorage {};
        class updateMoney {};
        class updatePlayerList {};
    };
};
