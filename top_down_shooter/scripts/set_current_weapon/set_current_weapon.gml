if (holding_weapon()) {
	stop_reloading();
}
selected_item = argument[0];
if (holding_weapon()) {
	
	var select = inventory[selected_item, 0];
	alarm[0] = weapon[select, 10];
	is_changing_gun = true;
	
}