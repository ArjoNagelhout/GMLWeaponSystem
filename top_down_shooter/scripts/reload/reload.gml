var select = inventory[selected_item, 0];
var max_ammo = weapon[select, 7];
var cur_ammo = inventory[selected_item, 1];
var needed_ammo = max_ammo - cur_ammo;
var ammo_repo = clamp(ammo[weapon[select, 3], 3], 0, needed_ammo);

if (ammo_repo > 0) {
	inventory[selected_item, 1] += ammo_repo;
	ammo[select, 3] -= ammo_repo;
}

is_reloading = false;