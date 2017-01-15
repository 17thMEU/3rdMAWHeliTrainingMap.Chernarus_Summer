private _pilot = param [0, objNull, [objNull], [1]];
_pilot addEventHandler ["GetInMan", {if (_this select 2 isKindOf "Helicopter") then {_this select 2 execVM "HeliFailureScript.sqf"};}];
_pilot addEventHandler ["GetOutMan", {removeAllActions (_this select 2);}]