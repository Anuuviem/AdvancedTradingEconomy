# AdvancedTradingEconomy
Applies a random variable to modify trader prices on server startup

Install

copy Advanced trading folder to dayz_code\actions\ in your mission folder (or be sure to change the paths with wherever you install it!)

Open your init.sqf and insert
```
_adv_economyFluc = [] execVM "dayz_code\actions\AdvancedTrading\functions\adv_econFluc.sqf";
```
inside the brackets {} at the bottom of if (isServer)

open your Description.ext and insert
```
#include "dayz_code\actions\AdvancedTrading\functions\defines.hpp"
```
somewhere near the top, my file is heavily customized but I have it just underneath CfgSounds and working flawless.

Config Options

in dayz_code\actions\advancedTrading\functions\adv_econFluc.sqf youll find the code block that actually modifies the trader prices, currently working and posting this to engage the community on the idea!
