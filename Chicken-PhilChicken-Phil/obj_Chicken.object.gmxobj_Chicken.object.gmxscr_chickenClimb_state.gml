hsp = 0;
scr_step_getinputs();
scr_step_spriteindex();
mask_index = spr_chicken_idle;
if(os_type = os_ios) {
    if(key_right || key_left) vsp = 3 * (key_left - key_right);
}
else if(key_down || key_up) vsp = 3 * (key_down - key_up);
else {
    vsp += grav;
    }


//State changes
if(!place_meeting(x, y, obj_rope)) {
    state = states.idle;
}
if (key_jump) {
    state = states.jump;
}
if(key_right || key_left) {
    state = states.move;
}

scr_collision(obj_grass_top01);

