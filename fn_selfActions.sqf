private["_playerPos","_nearVend"];

_playerPos = getPosATL player;
_nearVend = count nearestObjects [_playerPos, ["MAP_vending_machine"], 6] > 0;
 
if (_nearVend) then {
        if (s_player_buySoda < 0) then {
            s_player_buySoda = player addaction[("<t color=""#00C732"">" + ("Try and steal a soda?") +"</t>"),"Custom\DrinkMachine.sqf"];
        };
    } else {
        player removeAction s_player_buySoda;
        s_player_buySoda = -1;
    };
 