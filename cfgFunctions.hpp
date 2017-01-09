#ifndef MODULES_DIRECTORY
    #define MODULES_DIRECTORY modules
#endif

class GRAD_moneymenu {
    class common {
        file = MODULES_DIRECTORY\grad-moneyMenu\functions;

        class addFunds {};
        class checkSend {};
        class formattedHint {};
        class getModuleRoot {};
        class initModule {postInit = 1;};
        class loadMenu {};
        class receiveMoney {};
        class sendMoney {};
        class updateMoney {};
    };
};
