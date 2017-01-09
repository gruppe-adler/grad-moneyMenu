# GRAD MoneyMenu
WIP

* Enables you to:
  * give money to players
  * take money from captive players

Can be used supplementary to [GRAD List-Buymenu](https://github.com/gruppe-adler/grad-listBuymenu) or standalone.  
GRAD MoneyMenu is multiplayer and JIP proof.

## Dependencies
* [CBA_A3](https://github.com/CBATeam/CBA_A3)
* [ACE3](https://github.com/acemod/ACE3)


## Installation
### Manually
1. Create a folder in your mission root folder and name it `modules`. Then create one inside there and call it `grad-moneymenu`.
2. Download the contents of this repository ( there's a download link at the side ) and put it into the directory you just created.
3. see step 3 below in the npm part

### Via `npm`
_for details about what npm is and how to use it, look it up on [npmjs.com](https://www.npmjs.com/)_

1. Install package `grad-moneymenu` : `npm install --save grad-moneymenu`
2. Prepend your mission's `description.ext` with `#define MODULES_DIRECTORY node_modules`
3. Append the following lines of code to the `description.ext`:

```sqf
#include "node_modules\grad-moneymenu\grad_moneymenu.hpp"

class CfgFunctions {
    #include "node_modules\grad-moneymenu\cfgFunctions.hpp"
};
```
