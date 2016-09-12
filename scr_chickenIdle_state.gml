scr_step_getinputs();
scr_input_reaction();
scr_step_spriteindex();
if(!global.playerDead) mask_index = spr_chicken_idle;
image_speed = .15 * (30 / room_speed);

//State changes
if(key_right || key_left) {
    state = states.move;
}

if (key_jump) {
    state = states.jump;
}
if(vsp < 0) && (!key_jump_held) vsp = max(vsp, -jumpspeed / 2);

 
if(place_meeting(x, y, obj_rope)) {
    if(os_type = os_ios) {
        if(key_left || key_right) {
            state = states.climb;
        }
    }
    else if(key_up || key_down) {
        state = states.climb;
    }
    
}


scr_collision(obj_grass_top01);


