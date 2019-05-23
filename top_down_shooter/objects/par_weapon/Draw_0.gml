if (show_tooltip) {
	draw_set_halign(fa_middle);
	draw_set_valign(fa_center);
	draw_text(x, y+tooltip_text_offset, string(tooltip) + " " + string(current_ammo));
}
draw_self();