/////////////////////////
//Script made by Jochem//
/////////////////////////
params["_unit","_hideout"];

_pos = [(getPos _hideout),[100,500],0,1,[2,300]] call Zen_FindGroundPosition;

_unit doMove _pos;
waitUntil{sleep 2; (((_unit distance _pos) < 5) OR (!alive _unit))};

_unit playMove "Acts_TreatingWounded05";
sleep 10;
_pos = [getPos _unit,0.5,getDir _unit]call Zen_ExtendPosition;
_ied = createMine ["IEDLandBig_F", _pos, [], 0];
[_ied]call JOC_miscIed;
iedArray pushBack _ied;
sleep 10;
_unit playMoveNow "Acts_TreatingWounded_out";
