// Object properties
acceleration = 0.25; // acceleration
deceleration = 0.05; // deceleration
max_speed = 1; // maximum speed

event_inherited();


// INVENTORY SELECTION
selected_item = 0;
inventory_size = 4;

weapon_grab_distance = 16;

aim_direction = 0;

weapon_reference();
display_set_gui_size(256, 256);

// inventory
inventory[0, 0] = noone;
inventory[0, 1] = noone;
inventory[1, 0] = noone;
inventory[1, 1] = noone;
inventory[2, 0] = noone;
inventory[2, 1] = noone;
inventory[3, 0] = noone;
inventory[3, 1] = noone;
inventory[4, 0] = noone;
inventory[4, 1] = noone;

// states
is_picking_up = false;
is_reloading = false;
has_shot = false;
is_changing_gun = false;
busy = false;
can_play_empty_sound = true;