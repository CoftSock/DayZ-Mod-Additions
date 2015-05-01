private ["_hasBar","_random"];

_hasBar = "ItemCrowbar" in magazines player;
_random = round(random(8));

if (!_hasBar) exitWith {cutText [format["You have no way to break in"], "PLAIN DOWN"];};

if (_hasBar) then
    {
    player playActionNow "Medic";
	 _sfx = "chopwood";
    [player,_sfx,0,false,_dis] call dayz_zombieSpeak;
    [player,_dis,true,(getPosATL player)] call player_alertZombies;
    sleep 3;
    switch (_random) do {    
        case 0 :{
            player addMagazine "ItemSodaOrangeSherbet";
        };
        case 1 :{
            player addMagazine "ItemSodaLvg";
        };
        case 2 :{
            player addMagazine "ItemSodaClays";
        };
        case 3 :{
            player addMagazine "ItemSodaSmasht";
        };
        case 4 :{
            player addMagazine "ItemSodaPepsi";
        };
        case 5 :{
            player addMagazine "ItemSodaMdew";
        };
        case 6 :{
            player addMagazine "ItemSodaCoke";
        };
        case 7 :{
            player addMagazine "ItemSodaLemonade";
        };
        case 8 :{
            player addMagazine "ItemSodaRabbit";
        };
    };
    sleep 0.01;
    titleText ["Soda popped into your pocket", "PLAIN DOWN"];titleFadeOut 5;
};