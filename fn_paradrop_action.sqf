params ["_unit","_pos","_autoDeploy",["_deployHeight",500,0],"_static"];
_unit setpos _pos;
// AI GET auto deployed
if(!isPlayer _unit || _autoDeploy) then
{
	[_unit,_deployHeight,_static] spawn {
		params ["_unit","_deployHeight","_static"];
		waitUntil {(getpos (_unit	select 2)) < _deployHeight};
		[_unit_static] call para_openchute;
	};
} else {
	_unit addAction ["Open Chute", {[(_this select 1),_this select 3] call para_openchute;removeAction (_this select 2)}, [_static], 6, false, true, "Throw", "_target == _this"];
};