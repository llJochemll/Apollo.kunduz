/////////////////////////
//Script made by Jochem//
/////////////////////////
_houses = [houses, (count houses)]call Zen_ArrayGetRandomSequence;

_i = 0;
while{_i < ((count _houses) * population)}do{
    _house = _houses select _i;
    _positions = [_house] call BIS_fnc_buildingPositions;
    hint "lel";

    _group = [getPos _house, civilian, "Infantry", (round((count _positions)/3)), "civ"] call Zen_SpawnInfantryGarrison;
    {
        _x setVariable["home",_house];
        [_x]spawn JOC_civBehavior;
    } forEach (units _group);
    //[(units _group)]call JOC_cacheUnits;

    _i = _i + 1;
};