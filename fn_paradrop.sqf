
params ["_unit","_location",["_autoDepoly",false,false],["_static",false,true],["_random",true,true],["_zHeight",500,0]];
_pos = [0,0,0];
if(_location isEqualTyp "") then
{
	_pos = getMarkerPos _location;
	if(_random) then {
		[_location] call ws_fnc_getPosInArea;
	};
};
_pos set [2,_zHeight];
if(_unit isKindOf "Man")
{

};
	_classname = "Steerable_Parachute_F";
	if(_static) then { _classname = ""; };
	_unit setpos _pos;
	_chute = createVehicle [_classname, position _unit, [], direction _unit, 'FLY'];
	_chute setPos (getPos _unit);
	_unit assignAsDriver _chute;
	_unit moveIndriver _chute;