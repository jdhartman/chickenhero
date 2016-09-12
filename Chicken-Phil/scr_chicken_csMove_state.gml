mask_index = spr_chicken_idle;

if(hsp != 0) sprite_index = moveSpr;
if(hsp = 0) sprite_index = idleSpr;

if(vsp < 0) sprite_index = jumpSpr;
else if(vsp > 0 && !place_meeting(x, y + 1, obj_grass_top01)) sprite_index = fallSpr;

vsp += grav;

scr_collision(obj_grass_top01);
