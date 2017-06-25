# AdvancedTradingEconomy
Applies a random variable to modify trader prices on server startup

Install

copy Advanced trading folder to dayz_code\actions\ in your mission folder (or be sure to change the paths with wherever you install it!)

Open your init.sqf and insert

if (isNil "DZE_ecoMult") then {
	DZE_ecoMult = (round(random 20));
};

just before   // EPOCH CONFIG VARIABLES END //

open your Description.ext and insert

#include "dayz_code\actions\AdvancedTrading\functions\defines.hpp"

somewhere near the top, my file is heavily customized but I have it just underneath CfgSounds and working flawless.

OPTIONAL
For Testing purposes, I have inserted this diag_log at the bottom of my init so I can see what the market will be like today

switch (DZE_ecoMult) do {
	case 0: 		{diag_log "[ECONOMY] Using Economy! ~You Buy 200 Percent, You Sell 10 Percent";};
	case 1: 		{diag_log "[ECONOMY] Using Economy! ~You Buy 190 Percent, You Sell 25 Percent";};
	case 2: 		{diag_log "[ECONOMY] Using Economy! ~You Buy 180 Percent, You Sell 30 Percent";};
	case 3: 		{diag_log "[ECONOMY] Using Economy! ~You Buy 175 Percent, You Sell 40 Percent";};
	case 4: 		{diag_log "[ECONOMY] Using Economy! ~You Buy 160 Percent, You Sell 50 Percent";};
	case 5: 		{diag_log "[ECONOMY] Using Economy! ~You Buy 150 Percent, You Sell 60 Percent";};
	case 6: 		{diag_log "[ECONOMY] Using Economy! ~You Buy 150 Percent, You Sell 75 Percent";};
	case 7: 		{diag_log "[ECONOMY] Using Economy! ~You Buy 130 Percent, You Sell 80 Percent";};
	case 8: 		{diag_log "[ECONOMY] Using Economy! ~You Buy 120 Percent, You Sell 90 Percent";};
	case 9: 		{diag_log "[ECONOMY] Using Economy! ~You Buy 110 Percent, You Sell 100 Percent";};
	case 10: 		{diag_log "[ECONOMY] Using Economy! ~You Buy 100 Percent, You Sell 110 Percent";};
	case 11: 		{diag_log "[ECONOMY] Using Economy! ~You Buy 90 Percent, You Sell 125 Percent";};
	case 12: 		{diag_log "[ECONOMY] Using Economy! ~You Buy 80 Percent, You Sell 130 Percent";};
	case 13: 		{diag_log "[ECONOMY] Using Economy! ~You Buy 75 Percent, You Sell 140 Percent";};
	case 14: 		{diag_log "[ECONOMY] Using Economy! ~You Buy 60 Percent, You Sell 150 Percent";};
	case 15: 		{diag_log "[ECONOMY] Using Economy! ~You Buy 50 Percent, You Sell 160 Percent";};
	case 16: 		{diag_log "[ECONOMY] Using Economy! ~You Buy 40 Percent, You Sell 175 Percent";};
	case 17: 		{diag_log "[ECONOMY] Using Economy! ~You Buy 30 Percent, You Sell 180 Percent";};
	case 18: 		{diag_log "[ECONOMY] Using Economy! ~You Buy 20 Percent, You Sell 190 Percent";};
	case 19: 		{diag_log "[ECONOMY] Using Economy! ~You Buy 10 Percent, You Sell 200 Percent";};
	//default: 		{diag_log "[ECONOMY] Using Economy Standard Stock, Standard Prices! ~100 Percent, 50 Percent";};
};

Config Options

in dayz_code\actions\advancedTrading\init.sqf youll find the code block that actually modifies the trader prices, currently heavily unbalanced but working and posting this toengage the community on the idea!

switch (DZE_ecoMult) do {
	case 0: 	{DZE_buyMult = 2; 		DZE_sellMult = 0.1;};
	case 1: 	{DZE_buyMult = 1.9; 	DZE_sellMult = 0.25;};		
	case 2: 	{DZE_buyMult = 1.8; 	DZE_sellMult = 0.3;};
	case 3: 	{DZE_buyMult = 1.75; 	DZE_sellMult = 0.4;};
	case 4: 	{DZE_buyMult = 1.6; 	DZE_sellMult = 0.5;};
	case 5: 	{DZE_buyMult = 1.5; 	DZE_sellMult = 0.6;};
	case 6: 	{DZE_buyMult = 1.4; 	DZE_sellMult = 0.75;};
	case 7: 	{DZE_buyMult = 1.3; 	DZE_sellMult = 0.8;};
	case 8: 	{DZE_buyMult = 1.25; 	DZE_sellMult = 0.9;};
	case 9: 	{DZE_buyMult = 1.1; 	DZE_sellMult = 1;};		
	case 10: 	{DZE_buyMult = 1; 		DZE_sellMult = 1.1;}; 	
	case 11: 	{DZE_buyMult = 0.9; 	DZE_sellMult = 1.25;};		
	case 12: 	{DZE_buyMult = 0.8; 	DZE_sellMult = 1.3;};
	case 13: 	{DZE_buyMult = 0.75;	DZE_sellMult = 1.4;};
	case 14: 	{DZE_buyMult = 0.6; 	DZE_sellMult = 1.5;};
	case 15: 	{DZE_buyMult = 0.5; 	DZE_sellMult = 1.6;};
	case 16: 	{DZE_buyMult = 0.4; 	DZE_sellMult = 1.75;};
	case 17: 	{DZE_buyMult = 0.3; 	DZE_sellMult = 1.8;};
	case 18: 	{DZE_buyMult = 0.25;	DZE_sellMult = 1.9;};
	case 19: 	{DZE_buyMult = 0.1; 	DZE_sellMult = 2;};
	//default:	{DZE_buyMult = 1; 		DZE_sellMult = 1;};
};
