

if(vsp < 0) sprite_index = jumpSpr;
else if(vsp > 0 && !place_meeting(x, y + vsp, obj_grass_top01)) sprite_index = fallSpr;

if (vsp < 10) vsp += grav;

if (place_meeting(x, y + vsp, obj_grass_top01)) {
    vsp = -cutJump;
    audio_play_sound(snd_jump, 0, 0);
    state = states.cs_move;
}


scr_collision(obj_grass_top01);
