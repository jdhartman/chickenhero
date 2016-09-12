//Animations

if( move != 0) image_xscale = move;


if(place_meeting(x, y + vsp, obj_grass_top01)) {
    
    if (hsp != 0) {
        sprite_index = moveSpr; 
    }
    else {
        sprite_index = idleSpr;
    }
}
else {
    if (vsp < 0) {
        sprite_index = jumpSpr;
    }
    else if(vsp > 0 && key_jump_held){
        sprite_index = floatSpr; 
        image_speed = .24;
    }
    else {
        sprite_index = fallSpr;
        }
}

if(sprite_index == floatSpr) {
    audio_sound_gain(obj_controller.wings, .6, 0);
}
else audio_sound_gain(obj_controller.wings, 0, 0);






