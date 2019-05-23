draw_self();

// Draw held weapon
if (inventory[selected_item, 0] != noone) {
	draw_sprite_ext(weapon[inventory[selected_item, 0], 1], 0, x, y, 1, 1, aim_direction, image_blend, image_alpha);
}