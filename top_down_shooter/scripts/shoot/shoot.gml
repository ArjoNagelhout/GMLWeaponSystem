if (has_shot == false) && (is_reloading == false) {
	
	var select = inventory[selected_item, 0];
	var bullet_type = weapon[select, 3];
	
	
	if (inventory[selected_item, 1] > 0) {
		inventory[selected_item, 1] --;
	
		create_bullet(bullet_type);
	
		// Knockback
		var knockback = weapon[select, 6];
		var knockback_direction = degtorad(aim_direction);
		var h_knockback = cos(knockback_direction)*knockback;
		var v_knockback = -sin(knockback_direction)*knockback;
		hsp -= h_knockback;
		vsp -= v_knockback;
	
		has_shot = true;
		alarm[2] = weapon[select, 11];
		
		// PLAY SHOT SOUND
		audio_play_sound(weapon[select, 16], 0, 0);
		
	} else {
		// PLAY EMPTY SOUND
		if (can_play_empty_sound) {
			audio_play_sound(weapon[select, 17], 0, 0);
			can_play_empty_sound = false;
		}
	}
}