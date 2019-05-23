draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_sprite(spr_inventory, 0, 0, 0);

var slot_size = sprite_get_width(spr_selection);

// Draw weapons
for (var i = 0; i <= inventory_size; i ++) {
	if (inventory[i, 0] != noone) {
		draw_sprite(weapon[inventory[i, 0], 1], 0, (slot_size/2) + i * slot_size, slot_size/2);
		
	}
}

// Draw the name of the selected item
if (inventory[selected_item, 0] != noone) {
	draw_text(10, 20, weapon[inventory[selected_item, 0], 0]);
	draw_text(10, 40, string(inventory[selected_item, 1]) + "/" + string(ammo[weapon[inventory[selected_item, 0], 3], 3]));
}

// Draw the selection box around the selected item
draw_sprite(spr_selection, 0, 0 + selected_item * slot_size, 0);

/*
draw_text(10, 60, alarm[0]);
draw_text(10, 80, alarm[1]);
draw_text(10, 100, alarm[2]);*/