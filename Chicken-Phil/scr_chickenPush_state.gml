scr_step_getinputs();
scr_input_reaction();
scr_step_spriteindex();
if(obj_crate01.push = false) {
    if(place_meeting(x + hsp, y, obj_crate01)) {
     
        var crate = instance_place(x + hsp, y, obj_crate01);
        with(crate) {
            scr_collisionSpeed(obj_Chicken.hsp / 2, 0, obj_grass_top01);
            obj_Chicken.hsp /= 2;
        }
    }
}


     
    //State changes
    
    if(key_right || key_left) {
        state = states.move;
    }
    
    if (key_jump) {
        state = states.jump;
    }
    
    else if(hsp = 0) {
        state = states.idle;
    }

    
scr_collision(obj_grass_top01);


