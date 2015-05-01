private["_item","_result","_dis","_sfx","_num", "_Nothing"];

_item = _this;
call gear_ui_init;
closeDialog 1;
_countOut = 3;
_Searching = false;

if (["forest",dayz_surfaceType] call fnc_inString) then {
	_countOut = floor(random 3) + 2;
	_Searching = true;
	
} else {
	_trees = ["ind_timbers.p3d","t_larix3s.p3d","t_pyrus2s.p3d","str_briza_kriva.p3d","dd_borovice.p3d","les_singlestrom_b.p3d","les_singlestrom.p3d","smrk_velky.p3d","smrk_siroky.p3d","smrk_maly.p3d","les_buk.p3d","str krovisko vysoke.p3d","str_fikovnik_ker.p3d","str_fikovnik.p3d","str vrba.p3d","hrusen2.p3d","str dub jiny.p3d","str lipa.p3d","str briza.p3d","p_akat02s.p3d","jablon.p3d","p_buk.p3d","str_topol.p3d","str_topol2.p3d","p_osika.p3d","t_picea3f.p3d","t_picea2s.p3d","t_picea1s.p3d","t_fagus2w.p3d","t_fagus2s.p3d","t_fagus2f.p3d","t_betula1f.p3d","t_betula2f.p3d","t_betula2s.p3d","t_betula2w.p3d","t_alnus2s.p3d","t_acer2s.p3d","t_populus3s.p3d","t_quercus2f.p3d","t_sorbus2s.p3d","t_malus1s.p3d","t_salix2s.p3d","t_picea1s_w.p3d","t_picea2s_w.p3d","t_ficusb2s_ep1.p3d","t_populusb2s_ep1.p3d","t_populusf2s_ep1.p3d","t_amygdalusc2s_ep1.p3d","t_ficusb2s_ep1.p3d","t_pistacial2s_ep1.p3d","t_pinuse2s_ep1.p3d","t_pinuss3s_ep1.p3d","t_prunuss2s_ep1.p3d","t_pinusn2s.p3d","t_pinusn1s.p3d","t_pinuss2f.p3d","t_poplar2f_dead_pmc.p3d","misc_torzotree_pmc.p3d","misc_burnspruce_pmc.p3d","brg_cocunutpalm8.p3d","brg_umbrella_acacia01b.p3d","brg_jungle_tree_canopy_1.p3d","brg_jungle_tree_canopy_2.p3d","brg_cocunutpalm4.p3d","brg_cocunutpalm3.p3d","palm_01.p3d","palm_02.p3d","palm_03.p3d","palm_04.p3d","palm_09.p3d","palm_10.p3d","brg_cocunutpalm2.p3d","brg_jungle_tree_antiaris.p3d","brg_cocunutpalm1.p3d"];
	_findNearestTree = objNull;
	{
		_objInfo = toArray(str(_x));
		_lenInfo = count _objInfo - 1;
		_objName = [];
		_i = 0;
		{
			if (58 == _objInfo select _i) exitWith {};
			_i = _i + 1;
		} forEach _objInfo;
		_i = _i + 2; 
		
		for "_k" from _i to _lenInfo do {
			_objName = _objName + [_objInfo select _k];
		};
		_objName = toLower(toString(_objName));

		if (_objName in _trees) exitWith { _findNearestTree = _x; };
	} foreach nearestObjects [getPosATL player, [], 8];
	
    _distance2d = [player, _findNearestTree] call BIS_fnc_distance2D;
    _distance3d = player distance _findNearestTree;
    _countOut = ceil(_distance3d-_distance2d);
	
	if (!isNull _findNearestTree) then {
		_Searching = true;
	} else {
		cutText [localize "str_player_23", "PLAIN DOWN"];
	};
};

if (_Searching) then {
    _counter = 0;
    _isOk = true;
    _proceed = false;

    while {_isOk} do {
        player playActionNow "Medic";

        _dis=20;
        _sfx = "tentunpack";
        [player,_sfx,0,false,_dis] call dayz_zombieSpeak;
        [player,_dis,true,(getPosATL player)] call player_alertZombies;
        
        ["Working",0,[60,10,10,0]] call dayz_NutritionSystem;

        r_interrupt = false;
        _animState = animationState player;
        r_doLoop = true;
        _started = false;
        _finished = false;

        while {r_doLoop} do {
            _animState = animationState player;
            _isMedic = ["medic",_animState] call fnc_inString;
            if (_isMedic) then {
                _started = true;
            };
            if (_started and !_isMedic) then {
                r_doLoop = false;
                _finished = true;
            };
            if (r_interrupt) then {
                r_doLoop = false;
            };

            sleep 0.1;
        };

        if(!_finished) exitWith {cutText [format["You have found a woodpile"], "PLAIN DOWN"];};
            _isOk = false;
            _proceed = false;
        };

        if(_finished) then {                
            _Nothing = false;
            if ([0.04] call fn_chance) then {
             _Nothing = true;
             exitWith {cutText [format["You have found nothing"], "PLAIN DOWN"];};
            
            _counter = _counter + 1;
            _itemOut = "PartWoodPile";

            _wpPos = player modeltoWorld [0,-1,0];
			_wpPos set [2,0]; // assuming the player in on the ground.
            _nearByPile= nearestObjects [_wpPos, ["WeaponHolder","WeaponHolderBase"],2];
            if (count _nearByPile ==0) then {
                _item = createVehicle ["WeaponHolder", _wpPos, [], 1, "CAN_COLLIDE"];
            } else {
                _item = _nearByPile select 0;
            };

            _item addMagazineCargoGlobal [_itemOut,1];
            //_item modelToWorld getPosATL player;
            _item setdir (getDir player);
            player reveal _item;
        };
            

    if (_proceed) then {            
    } else {
        cutText [localize "str_player_24_Stoped", "PLAIN DOWN"];

        r_interrupt = false;

        if (vehicle player == player) then {
            [objNull, player, rSwitchMove,""] call RE;
            player playActionNow "stop";
        };
    };
};
};
