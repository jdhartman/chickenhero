    if(global.playerDead) instance_create(obj_Chicken.x, obj_Chicken.y, obj_Chicken_death);
        
        if(instance_exists(obj_Chicken)) {
            obj_Chicken.x = obj_controller.x;
            obj_Chicken.y = obj_controller.y;
        }
        if(instance_exists(obj_Chicken2)) {
            obj_Chicken.x = obj_controller.x;
            obj_Chicken.y = obj_controller.y;       
        }
        if(instance_exists(obj_eggFollow)) {
            obj_eggFollow.x = obj_controller.x;
            obj_eggFollow.y = obj_controller.y;
        }
    audio_stop_sound(snd_wingFlap);
    room_restart();
    global.playerDead = false;
    global.player2Dead = false;
    global.eggDead = false;
    sprite_index = spr_chicken_idle;
    //part_system_clear(o_shader_start.ps);
    


