/////////////////////////
//Script made by Jochem//
/////////////////////////
_houses = [houses, (count houses)]call Zen_ArrayGetRandomSequence;

_i = 0;
while{_i < ((count _houses) * (population / 4))}do{
    _house = _houses select _i;
    _positions = [_house] call BIS_fnc_buildingPositions;
    hint "lel";

    _group = [getPos _house, east, "sof", 4, "basic"] call Zen_SpawnInfantryGarrison;
    {
        _x setVariable["hideout",_house];
        [_x]spawn JOC_rebelBehaviour;
    } forEach (units _group);
    [_house]call JOC_rebelCreateHideout;
    [(units _group)]call JOC_cacheUnits;

    _i = _i + 1;
};
