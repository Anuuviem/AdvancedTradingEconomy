# AdvancedTradingEconomy
Applies a random variable to modify trader prices on server startup

Install

This all assumes you already have custom compiles.sqf and fn_selfActions.sqf. Especially considering you should have installed zupas single currency to even make use of this script!

copy Advanced trading folder to dayz_code\actions\ in your mission folder (or be sure to change the paths with wherever you install it!)

open your fn_selfActions.sqf and find // All Traders block of code around line 1044 for me
youll see
```
if (DZE_ConfigTrader) then {
	_buyV = player addAction [localize "STR_EPOCH_PLAYER_289", "\z\addons\dayz_code\actions\AdvancedTrading\init.sqf",(_traderMenu select 0), 999, true, false];
	s_player_parts set [count s_player_parts,_buyV];
```
and change to
```
if (DZE_ConfigTrader) then {
	_buyV = player addAction [localize "STR_EPOCH_PLAYER_289", "dayz_code\actions\AdvancedTrading\init.sqf",(_traderMenu select 0), 999, true, false];
	s_player_parts set [count s_player_parts,_buyV];
```

Open your init.sqf and insert
```
[] execVM "dayz_code\actions\AdvancedTrading\functions\adv_econFlucArray.sqf";
```
at the bottom

open your Description.ext and insert
```
#include "dayz_code\actions\AdvancedTrading\functions\defines.hpp"
```
somewhere near the top, my file is heavily customized but I have it just underneath CfgSounds and working flawless.

Config Options

in dayz_code\actions\advancedTrading\functions\adv_econFluc.sqf youll find the code block that actually modifies the trader prices, currently working and posting this to engage the community on the idea!
