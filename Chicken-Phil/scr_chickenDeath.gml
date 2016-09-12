if(obj_Chicken.hp <= 0) {   
    with(obj_Chicken) {
        global.playerDead = true;
        state = states.idle;
        sprite_index = deathSpr; 
    }
}
if(headHead) {
        if(obj_Chicken.hp <= 0) {   
        with(obj_Chicken) {
            global.playerDead = true;
            state = states.idle;
            sprite_index = deathSpr; 
        }
    }
    if(obj_Chicken2.hp <= 0) {   
        with(obj_Chicken2) {
            global.player2Dead = true;
            state = states.idle;
            sprite_index = deathSpr; 
        }
    }
}
with(obj_Chicken) {
    if(place_meeting(x, y, obj_spike) || y > room_height) {
        hp = 0;
    }
}
with(obj_Chicken2) {
    if(place_meeting(x, y, obj_spike) || y > room_height) {
        hp = 0;
    }
}

if(global.playerDead) {
    with(obj_Chicken) {
        hp = 0;
        hit = false;
        sprite_index = deathSpr;
        mask_index = deathSpr;
    }
    if(instance_exists(obj_Chicken)) state = states.idle;
    if(instance_exists(obj_eggFollow)) {
        followEgg = false;
        obj_eggFollow.state = EGG_STATE.idle;
    }
}
if(headHead) {
   if(global.player2Dead) {
        with(obj_Chicken2) {
            hp = 0;
            hit = false;
            sprite_index = deathSpr;
            mask_index = deathSpr;
        }
        if(instance_exists(obj_Chicken2)) state = states.idle;
    }
}

if(death == 0 && (global.playerDead))   {
    var deathSnd = audio_play_sound(snd_chicken_death, 0, false);
    audio_sound_gain(deathSnd, .4, 0);
    death++;
}

