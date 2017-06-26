# AdvancedTradingEconomy
Applies a random variable to modify trader prices on server startup

Install

copy Advanced trading folder to dayz_code\actions\ in your mission folder (or be sure to change the paths with wherever you install it!)

Open your init.sqf and insert

if (isNil "DZE_ecoMult") then {
	DZE_ecoMult = (round(random 12));
};

just before   // EPOCH CONFIG VARIABLES END //

open your Description.ext and insert

#include "dayz_code\actions\AdvancedTrading\functions\defines.hpp"

somewhere near the top, my file is heavily customized but I have it just underneath CfgSounds and working flawless.

Config Options

in dayz_code\actions\advancedTrading\init.sqf youll find the code block that actually modifies the trader prices, currently heavily unbalanced but working and posting this toengage the community on the idea!
```
switch (DZE_ecoMult) do {
	case 0:	{DZE_buyMult = 2;	DZE_sellMult = 0.5;};
	case 1:	{DZE_buyMult = 1.9;	DZE_sellMult = 0.6;};
	case 2:	{DZE_buyMult = 1.8;	DZE_sellMult = 0.7;};
	case 3:	{DZE_buyMult = 1.6;	DZE_sellMult = 0.8;};
	case 4:	{DZE_buyMult = 1.5;	DZE_sellMult = 0.9;};
	case 5:	{DZE_buyMult = 1.4;	DZE_sellMult = 1.1;};
	case 6:	{DZE_buyMult = 1.2;	DZE_sellMult = 1.2;};
	case 7:	{DZE_buyMult = 0.9;	DZE_sellMult = 1.3;};
	case 8:	{DZE_buyMult = 0.8;	DZE_sellMult = 1.4;};
	case 9:	{DZE_buyMult = 0.7;	DZE_sellMult = 1.5;};
	case 10:{DZE_buyMult = 2.5;	DZE_sellMult = 1;}; //wildcard!
	case 11:{DZE_buyMult = 0.7;	DZE_sellMult = 2;}; //wildcard!
};
```
