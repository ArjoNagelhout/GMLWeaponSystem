weight = obj_player.weapon[weapon_index, 21];
show_tooltip = false;
tooltip_distance = obj_player.weapon_grab_distance;
tooltip_text_offset = -16;
tooltip = "E";

// Object properties
acceleration = 1; // acceleration
deceleration = 0.025; // deceleration
max_speed = 1; // maximum speed

current_ammo = 0;



event_inherited();


hsp = obj_player.hsp/weight;
vsp = obj_player.vsp/weight;