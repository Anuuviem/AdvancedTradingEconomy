/*///////////////////////////////////////////////////////////
Edit inspired by Juandayz, dynamic eco change over time!
//////////////////////////////////////////////////////////*/

if (isNil "DZE_ecoMult") then {
	DZE_buyMult = 1;	publicVariable "DZE_buyMult";	DZE_sellMult = 1;	publicVariable "DZE_sellMult";//stock prices
};

diag_log format["[ECONOMY] Initialization of Economy! ~You Buy %1 Percent, You Sell %2 Percent", (DZE_buyMult * 100), (DZE_sellMult * 100)];

fn_fluctuating = {
    DZE_ecoMult = (round(random 12));
	publicVariable "DZE_ecoMult";
    switch (DZE_ecoMult) do {
        case 0:			{DZE_buyMult = 2.0;		publicVariable "DZE_buyMult";
						 DZE_sellMult = 0.5;	publicVariable "DZE_sellMult";};
        case 1:			{DZE_buyMult = 1.9;		publicVariable "DZE_buyMult";
						 DZE_sellMult = 0.6;	publicVariable "DZE_sellMult";};
        case 2:			{DZE_buyMult = 1.8;		publicVariable "DZE_buyMult";
						 DZE_sellMult = 0.7;	publicVariable "DZE_sellMult";};
        case 3:			{DZE_buyMult = 1.6;		publicVariable "DZE_buyMult";
						 DZE_sellMult = 0.8;	publicVariable "DZE_sellMult";};
        case 4:			{DZE_buyMult = 1.5;		publicVariable "DZE_buyMult";
						 DZE_sellMult = 0.9;	publicVariable "DZE_sellMult";};
        case 5:			{DZE_buyMult = 1.4;		publicVariable "DZE_buyMult";	
						 DZE_sellMult = 1.1;	publicVariable "DZE_sellMult";};
        case 6:			{DZE_buyMult = 1.2;		publicVariable "DZE_buyMult";	
						 DZE_sellMult = 1.2;	publicVariable "DZE_sellMult";};
        case 7:			{DZE_buyMult = 0.9;		publicVariable "DZE_buyMult";
						 DZE_sellMult = 1.3;	publicVariable "DZE_sellMult";};
        case 8:			{DZE_buyMult = 0.8;		publicVariable "DZE_buyMult";
						 DZE_sellMult = 1.4;	publicVariable "DZE_sellMult";};
        case 9:			{DZE_buyMult = 0.7;		publicVariable "DZE_buyMult";
						 DZE_sellMult = 1.5;	publicVariable "DZE_sellMult";};
        case 10:		{DZE_buyMult = 2.5;		publicVariable "DZE_buyMult";
						 DZE_sellMult = 1.0;	publicVariable "DZE_sellMult";}; //wildcard! bad day to be buying....
        case 11:		{DZE_buyMult = 0.7;		publicVariable "DZE_buyMult";
						 DZE_sellMult = 2.0;	publicVariable "DZE_sellMult";}; //wildcard! MO MONEY!
    };
    [nil,nil,rTitleText,"Prices have changed! Check out the sweet deals NOW!", "PLAIN",10] call RE;
	diag_log format["[ECONOMY] Price Change Using Economy! ~You Buy %1 Percent, You Sell %2 Percent", (DZE_buyMult * 100), (DZE_sellMult * 100)];
};

waituntil {(round(time)) > 60}; //reset after one minute, should have fluctuating prices before any player gets there short of admins
call fn_fluctuating;

waituntil {(round(time)) > 1800}; //every 30 minutes, reset
call fn_fluctuating;

waituntil {(round(time)) > 3600}; //every 30 minutes, reset
call fn_fluctuating;

waituntil {(round(time)) > 5400}; //every 30 minutes, reset
call fn_fluctuating;

waituntil {(round(time)) > 7200}; //every 30 minutes, reset
call fn_fluctuating;

waituntil {(round(time)) > 9000}; //every 30 minutes, reset
call fn_fluctuating;

waituntil {(round(time)) > 10800}; //every 30 minutes, reset
call fn_fluctuating;