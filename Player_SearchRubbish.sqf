private ["_hasBar","_random","_canSearch"];

_canSearch = count nearestObjects [_playerPos, ["Garbage_can","Garbage_container","Land_Misc_GContainer_Big","Misc_TyreHeap","MAP_garbage_misc","MAP_garbage_paleta","MAP_ground_garbage_long","MAP_ground_garbage_square3","MAP_ground_garbage_square5","MAP_Misc_WoodPile"], 4] > 0;
_random = round(random(8));

if (_canSearch) then
    {
    player playActionNow "Medic";
	 _sfx = "chopwood";
    [player,_sfx,0,false,_dis] call dayz_zombieSpeak;
    [player,_dis,true,(getPosATL player)] call player_alertZombies;
    sleep 3;
    switch (_random) do {    
        case 0 :{
            player addMagazine "ItemTrashPaper";
        };
        case 1 :{
            player addMagazine "equip_pvc_box";
        };
        case 2 :{
            player addMagazine "ItemStone";
        };
        case 3 :{
            player addMagazine "equip_nails";
        };
        case 4 :{
            player addMagazine "ItemSodaPepsi";
        };
        case 5 :{
            player addMagazine "equip_rope";
        };
        case 6 :{
            player addMagazine "WoodenArrow";
        };
        case 7 :{
            player addMagazine "ItemSodaGrapeDrinkEmpty";
        };
        case 8 :{
            player addMagazine "TrashTinCan";
        };
    };
    sleep 0.02;
    titleText ["Check your pocket!", "PLAIN DOWN"];titleFadeOut 5;
};