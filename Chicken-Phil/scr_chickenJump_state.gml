scr_step_getinputs();
scr_input_reaction();
scr_step_spriteindex();
mask_index = spr_chicken_idle;

//Jump movement
if (place_meeting(x, y + 1, obj_grass_top01) || place_meeting(x, y + vsp, obj_quicksand_top)) {
    
    if (hsp = 0){
    state = states.idle;        
    }
    vsp = (-jumpspeed + -abs(hsp * 0.03) * frames);
    jumpnoise = audio_play_sound(snd_jump, 0, 0);
    jump = true;
}
else {
    state = states.move;
}
//State changes
if(key_right || key_left) {
    state = states.move;
}



scr_collision(obj_grass_top01);

