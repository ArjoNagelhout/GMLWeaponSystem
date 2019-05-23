/* 
ammo type
hsp
vsp
*/
var ammo_type = argument[0];

var bullet_instance = instance_create_depth(x, y, 0, ammo[ammo_type, 1]);


bullet_instance.damage = ammo[ammo_type, 2];

var bullet_spd = weapon[inventory[selected_item, 0], 4];

var bullet_dir = degtorad(aim_direction);
var _hsp = cos(bullet_dir)*bullet_spd;
var _vsp = -sin(bullet_dir)*bullet_spd;
bullet_instance.hsp = _hsp;
bullet_instance.vsp = _vsp;
bullet_instance.dir = bullet_dir;