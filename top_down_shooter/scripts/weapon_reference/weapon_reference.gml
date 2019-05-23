// weapon reference

/* AMMO
0: name
1: object
2: damage per bullet
3: rest amount
*/

ammo[0, 0] = "pistol ammo";
ammo[0, 1] = obj_bullet_pistol;
ammo[0, 2] = 10;
ammo[0, 3] = 2000;

ammo[1, 0] = "shotgun ammo";
ammo[1, 1] = obj_bullet_shotgun;
ammo[1, 2] = 5;
ammo[1, 3] = 2000;

/* WEAPON
0:	name
1:	sprite
2:	object
3:	ammo type
4:	bullet speed
5:	bullet spread
6:	knockback
7:	max ammo amount
8:	reload time in frames
9:	pick up time in frames
10: change time in frames
11:	shooting delay in frames
12: reloading sound
13: pick up sound
14: change to sound
15: drop sound
16: shoot sound
17: empty shoot sound
18: single reload time in frames
19: bullet origin x
20: bullet origin y
21: weight

1000 ms = 60 frames
1 ms = 0.06 frames
400 ms = 24 frames

*/

// PISTOL
weapon[0, 0] = "pistol";
weapon[0, 1] = spr_pistol;
weapon[0, 2] = obj_pistol;
weapon[0, 3] = 0;
weapon[0, 4] = 3;
weapon[0, 5] = 0;
weapon[0, 6] = 1;
weapon[0, 7] = 8;
weapon[0, 8] = 80;
weapon[0, 9] = 30;
weapon[0, 10] = 10;
weapon[0, 11] = 30;
weapon[0, 12] = snd_pistol_reload;
weapon[0, 13] = snd_pistol_pick_up;
weapon[0, 14] = snd_pistol_pick_up;
weapon[0, 15] = snd_pistol_drop;
weapon[0, 16] = snd_pistol_shot;
weapon[0, 17] = snd_pistol_empty;
weapon[0, 18] = noone;
weapon[0, 19] = 9;
weapon[0, 20] = 1;
weapon[0, 21] = 0.6;


// SHOTGUN
weapon[1, 0] = "shotgun";
weapon[1, 1] = spr_shotgun;
weapon[1, 2] = obj_shotgun;
weapon[1, 3] = 1;
weapon[1, 4] = 3;
weapon[1, 5] = 2;
weapon[1, 6] = 10;
weapon[1, 7] = 6;
weapon[1, 8] = 180;
weapon[1, 9] = 60;
weapon[1, 10] = 20;
weapon[1, 11] = 70;
weapon[1, 12] = snd_shotgun_reload;
weapon[1, 13] = snd_pistol_pick_up;
weapon[1, 14] = snd_pistol_pick_up;
weapon[1, 15] = snd_pistol_drop;
weapon[1, 16] = snd_shotgun_shot;
weapon[1, 17] = snd_pistol_empty;
weapon[1, 18] = 24;
weapon[1, 19] = 15;
weapon[1, 20] = 2;
weapon[1, 21] = 0.8;