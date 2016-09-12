#define scr_chickenMove_state
scr_step_getinputs();
scr_input_reaction();
scr_step_spriteindex();
mask_index = spr_chicken_idle;

if(key_left) {
    if(hsp > -8) hsp += -.25 * frames;
    image_speed = (.25 - (hsp * .05)) * frames;    
}
if(key_right) {
    if(hsp < 8) hsp += .25 * frames;
    image_speed = (.25 + (hsp * .05)) * frames; 
}

//State changes
if (key_jump) {
    state = states.jump;
}
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

if(vsp < 0) && (!key_jump_held) vsp = max(vsp, -jumpspeed / 2);

if((!place_meeting(x, y, obj_grass_top01) && key_jump_held)) {
    if(vsp > 0) {
        if(instance_exists(obj_eggFollow) && obj_eggFollow.state != EGG_STATE.follow) {
                vsp -= .17; 
        }
        else if(!instance_exists(obj_eggFollow)) {
            vsp -= .17;
        }
    }
}
else if(hsp = 0) {
    state = states.idle;
}

scr_collision(obj_grass_top01);




#define script51
