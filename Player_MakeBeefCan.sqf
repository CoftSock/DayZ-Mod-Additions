private ["_tin1text","_tin2text","_tintext","_hasBeef","_hastinitem","_qty","_dis","_sfx"];

_bottletext = getText (configFile >> "CfgMagazines" >> "FoodbeefCooked" >> "displayName");
_tin1text = getText (configFile >> "CfgMagazines" >> "TrashTinCan" >> "displayName");
_tin2text = getText (configFile >> "CfgMagazines" >> "ItemSodaEmpty" >> "displayName");
_tintext = format["%1 / %2",_tin1text,_tin2text];
_hasBeef = (("FoodbeefCooked" in magazines player));
_hastinitem = false;

if (_hasBeef and _hastinitem) then {
	player playActionNow "Medic";
	sleep 1;
	_dis=10;
	_sfx = "cook";
	[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
	[player,_dis,true,(getPosATL player)] call player_alertZombies;
	sleep 5;
    player addMagazine "FoodCanBeef";
};
