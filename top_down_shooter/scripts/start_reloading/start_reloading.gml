var select = inventory[selected_item, 0];
var max_ammo = weapon[select, 7];
var cur_ammo = inventory[selected_item, 1];
var needed_ammo = max_ammo - cur_ammo;
var ammo_repo = clamp(ammo[weapon[select, 3], 3], 0, needed_ammo);

if ((max_ammo != cur_ammo) && (alarm[1] == -1)) {
	if (ammo[weapon[select, 3], 3] > 0) {
		var snd = audio_play_sound(weapon[select, 12], 0, 0);
		
		if (weapon[select, 18] != noone) {
			var time = (max_ammo-ammo_repo)*((weapon[select, 18]/0.06)/1000);
			show_debug_message(time);
			audio_sound_set_track_position(snd, time);
			alarm[1] = weapon[select, 8]-((max_ammo-ammo_repo)*weapon[select, 18]);
		} else {
			alarm[1] = weapon[select, 8];
		}
		
		is_reloading = true;
	} else {
		audio_play_sound(weapon[select, 17], 0, 0);
		
	}
}