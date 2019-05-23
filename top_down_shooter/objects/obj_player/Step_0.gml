// Get user input
key_up = keyboard_check(ord("W"));
key_left = keyboard_check(ord("A"));
key_down = keyboard_check(ord("S"));
key_right = keyboard_check(ord("D"));
key_pick_up = keyboard_check_pressed(ord("E"));
key_drop = keyboard_check_pressed(ord("Q"));
key_reload = keyboard_check_pressed(ord("R"));
key_shoot = mouse_check_button(mb_left);
key_release = mouse_check_button_released(mb_left);

// Movement direction
h_dir = (key_right - key_left);
v_dir = (key_down - key_up);

event_inherited();

// The user can scroll through the inventory or select a specific slot with the corresponding number
select_weapon();
aim();

// Shows an "E" above the weapon to show which one will be picked up when pressing E
show_weapon_tooltips();


if ((is_picking_up) || (is_changing_gun) || (has_shot)) {
	busy = true;
} else {
	busy = false;
}

if (key_release) {
	can_play_empty_sound = true;
}

if (!busy) {
	if (key_pick_up) {
		pick_up_weapon();
	}
	
	if (holding_weapon()) {
		if (key_shoot) {
			shoot();
		}
		
		if (key_drop) {
			drop_weapon();
		}

		if (key_reload) {
			start_reloading();
		}
	}
}