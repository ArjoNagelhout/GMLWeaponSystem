// Pick up weapon
var nearest_weapon = instance_nearest(x, y, par_weapon);

if (distance_to_object(nearest_weapon) < weapon_grab_distance) {
	
	// Drop the selected weapon first
	if (holding_weapon()) {
		var gun = instance_create_depth(x, y, 0, weapon[inventory[selected_item, 0], 2]);
		gun.current_ammo = inventory[selected_item, 1];
	}
	
	inventory[selected_item, 0] = nearest_weapon.weapon_index;
	inventory[selected_item, 1] = nearest_weapon.current_ammo;
	
	is_picking_up = true;
	
	var select = inventory[selected_item, 0]; 
	alarm[0] = weapon[select, 9];
	
	// PLAY PICK UP SOUND
	audio_play_sound(weapon[select, 13], 0, 0);
	
	with (nearest_weapon) {
		instance_destroy();
	}
}