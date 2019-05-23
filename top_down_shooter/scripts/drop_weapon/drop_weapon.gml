// Drop weapon
stop_reloading();
var select = inventory[selected_item, 0];
var gun = instance_create_depth(x, y, 0, weapon[select, 2]);
gun.current_ammo = inventory[selected_item, 1];

// PLAY DROP SOUND
audio_play_sound(weapon[select, 15], 0, 0);

inventory[selected_item, 0] = noone;