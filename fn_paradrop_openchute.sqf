params ["_unit","_static"]
_chuteName = "Steerable_Parachute_F";
if(_static) then {_chuteName = "NonSteerable_Parachute_F"};
_chute = createVehicle ["", position _unit, [], direction _unit, 'FLY'];
_chute setPos (getPos _unit);
_unit assignAsDriver _chute;
_unit moveIndriver _chute;