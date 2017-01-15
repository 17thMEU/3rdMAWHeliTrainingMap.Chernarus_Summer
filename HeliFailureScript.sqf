private _heli = param [0, objNull, [objNull], [1]];
private _actionArray = [];

_actionArray pushBack (_heli addAction ["Engine Failure", {[_this select 0, ["HitEngine", 1.0]] remoteExec ["setHitPointDamage"]}, nil, 1.5, true, true, "", "_target turretUnit [-1] == _this || _target turretUnit [0] == _this" ]);
_actionArray pushBack (_heli addAction ["Main Rotor Failure", {[_this select 0, ["HitHRotor", 1.0]] remoteExec ["setHitPointDamage"]}, nil, 1.5, true, true, "", "_target turretUnit [-1] == _this || _target turretUnit [0] == _this" ]);
_actionArray pushBack (_heli addAction ["Anti-torque Failure", {[_this select 0, ["HitVRotor", 1.0]] remoteExec ["setHitPointDamage"]}, nil, 1.5, true, true, "", "_target turretUnit [-1] == _this || _target turretUnit [0] == _this" ]);
_actionArray pushBack (_heli addAction ["Fuel Leak", {[_this select 0, ["HitFuel", 1.0]] remoteExec ["setHitPointDamage"]}, nil, 1.5, true, true, "", "_target turretUnit [-1] == _this || _target turretUnit [0] == _this" ]);
_actionArray pushBack (_heli addAction ["Reset", {[_this select 0, 0.0] remoteExec ["setDamage"]; [_this select 0, 1.0] remoteExec ["setFuel"]; hint "Repaired/Refueled"}, nil, 1.5, true, true, "", "_target turretUnit [-1] == _this || _target turretUnit [0] == _this" ]);

_actionArray
