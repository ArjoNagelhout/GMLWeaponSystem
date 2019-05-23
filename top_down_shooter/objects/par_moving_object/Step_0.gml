// Correct speed when moving diagonally
if ((h_dir != 0) && (v_dir != 0)) {
	
	if (can_change_compensation) {
		h_compensation = abs(h_dir);
		v_compensation = abs(v_dir);
		can_change_compensation = false;
	}
	
	if (h_compensation > target_compensation) {
		h_compensation -= acceleration;
	}
	if (v_compensation > target_compensation) {
		v_compensation -= acceleration;
	}
	
} else {
	can_change_compensation = true;
	h_compensation = 1;
	v_compensation = 1;
}

// Define target speed
target_hsp = h_dir * max_speed * h_compensation;
target_vsp = v_dir * max_speed * v_compensation;

// Accelerate towards target speed
hsp = accelerate(hsp, h_dir, target_hsp);
vsp = accelerate(vsp, v_dir, target_vsp);

// Clamp
hsp = clamp(hsp, -2*max_speed, 2*max_speed);
vsp = clamp(vsp, -2*max_speed, 2*max_speed);

// MOVE (change x and y coordinates)
x += hsp;
y += vsp;

event_inherited();