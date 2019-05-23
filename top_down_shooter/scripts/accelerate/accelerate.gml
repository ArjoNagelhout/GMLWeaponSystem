var _spd = argument[0];
var _dir = argument[1];
var _target_spd = argument[2];

if (_dir == 1) { // Going right
	if (_spd < 0) { // If going to the opposite direction, decelerate faster
		_spd += deceleration;
	}
	
	if (_spd < _target_spd) { // accelerate
		_spd += acceleration;
	} else { // set back to target speed
		_spd -= deceleration;
	}
} else if (_dir == -1) { // Going left
	if (_spd > 0) {
		_spd -= deceleration;	
	}
	
	if (_spd > _target_spd) {
		_spd -= acceleration;
	} else {
		_spd += deceleration;
	}
} else { // Stopping
	if (_spd > 0) {
		if (_spd > deceleration) {
			_spd -= deceleration;
		} else {
			_spd = 0;
		}
	} else if (_spd < 0) {
		if (_spd < deceleration) {
			_spd += deceleration;
		} else {
			_spd = 0;
		}
	}
}

return _spd;