if !(isDedicated) exitWith {}; //if not a server then EFF this code

// stock prices
DZE_buyMult = 1; //initialize at stock
DZE_sellMult = 1; //initialize at stock
publicVariable "DZE_buyMult"; //sync variable with client and server
publicVariable "DZE_sellMult"; //sync variable with client and server

diag_log format["[ECONOMY] Initialization of Economy! ~You Buy %1 Percent, You Sell %2 Percent", (DZE_buyMult * 100), (DZE_sellMult * 100)];

while {true} do { //while true so basically == always run script loop except for that sleep down there
	_multArray = [ //array to hold values and keep the scaling of the market
					[2.0,0.5], //select 0 [BuyMult,SellMult] = select 0, select 1
					[1.9,0.6], //select 1
					[1.8,0.7], //select 2
					[1.6,0.8], //select 3
					[1.5,0.9], //select 4
					[1.4,1.1], //select 5
					[1.2,1.2], //select 6
					[0.9,1.3], //select 7
					[0.8,1.4], //select 8
					[0.7,1.5], //select 9
					[2.5,1.0], //select 10
					[0.8,2.0]  //select 11
				];
	_rand = random(count _multArray); //just generate our random var which will count the number of arrays in _multArray and pull a random from it
	_sleep = 1800; //30 min sleep cycle
	_time = diag_tickTime; //track server time
	
	DZE_buyMult = (_multArray select _rand) select 0; //in theory will select array value of _rand, buyMult
	DZE_sellMult = (_multArray select _rand) select 1; //in theory will select array value of _rand, sellMult
	publicVariable "DZE_buyMult"; //sync variable with client and server
	publicVariable "DZE_sellMult"; //sync variable with client and server
	
	[nil,nil,rTitleText,"Prices have changed! Check out the sweet deals NOW!", "PLAIN",10] call RE;
	diag_log format["[ECONOMY] Price Change Using Economy! ~You Buy %1 Percent, You Sell %2 Percent", (DZE_buyMult * 100), (DZE_sellMult * 100)];
	
	waitUntil{sleep 1;diag_tickTime >= (_time + _sleep)}; //stop script until new time reached
};
