if (keyboard_check_pressed(ord("1"))) {set_current_weapon(0);}
else if (keyboard_check_pressed(ord("2"))) {set_current_weapon(1);}
else if (keyboard_check_pressed(ord("3"))) {set_current_weapon(2);}
else if (keyboard_check_pressed(ord("4"))) {set_current_weapon(3);}
else if (keyboard_check_pressed(ord("5"))) {set_current_weapon(4);}

if (mouse_wheel_up()) {
	if (selected_item < inventory_size) {
		set_current_weapon(selected_item+1);
	} else {
		set_current_weapon(0);
	}
} else if (mouse_wheel_down()) {
	if (selected_item > 0) {
		set_current_weapon(selected_item-1);
	} else {
		set_current_weapon(inventory_size);
	}
}