//Get the player's input

        key_right = keyboard_check(vk_right) || keyboard_check(ord('D')) || (gamepad_axis_value(0, gp_axislh) > .5) || gamepad_button_check(0, gp_padr);
        key_left = keyboard_check(vk_left) || keyboard_check(ord('A')) || (gamepad_axis_value(0, gp_axislh) < -.5) || gamepad_button_check(0, gp_padl);
        key_selectr = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord('D')) || (gamepad_axis_value(0, gp_axislh) > .5) || gamepad_button_check_pressed(0, gp_padr);
        key_selectl = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord('A')) || (gamepad_axis_value(0, gp_axislh) < -.5) || gamepad_button_check_pressed(0, gp_padl);
        key_jump = keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1);
        key_jump_held = keyboard_check(vk_space) || gamepad_button_check(0, gp_face1) ;
        key_pickup = keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0, gp_face3) || keyboard_check_pressed(ord('E'));
        key_pickup_held = keyboard_check(vk_enter) || gamepad_button_check(0, gp_face3) || keyboard_check(ord('E'));
        key_up = (keyboard_check(vk_up) || keyboard_check(ord("W")) || gamepad_button_check(0, gp_padu) || (gamepad_axis_value(0, gp_axislv) < -.5));
        key_down = (keyboard_check(vk_down) || keyboard_check(ord("S")) || gamepad_button_check(0, gp_padd)) || (gamepad_axis_value(0, gp_axislv) > .5);
        key_escape = keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(0, gp_start);

if(instance_exists(obj_Chicken2)) {
    switch(control) {
        case 1: {
        key_right = keyboard_check(vk_right);
        key_left = keyboard_check(vk_left);
        key_selectl = keyboard_check_pressed(vk_left);
        key_selectr = keyboard_check_pressed(vk_right);
        key_jump = keyboard_check_pressed(vk_numpad0);
        key_jump_held = keyboard_check(vk_numpad0);
        key_pickup = keyboard_check_pressed(vk_enter);
        key_pickup_held = keyboard_check(vk_enter);
        key_up = (keyboard_check(vk_up));
        key_down = (keyboard_check(vk_down));
        key_escape = keyboard_check_pressed(vk_backspace);
        break;
        }
    case 2: {
        key_right = keyboard_check(ord('D'));
        key_left = keyboard_check(ord('A'));
        key_selectr = keyboard_check_pressed(ord('D'));
        key_selectl = keyboard_check_pressed(ord('A'));
        key_jump = keyboard_check_pressed(vk_space);
        key_jump_held = keyboard_check(vk_space);
        key_pickup = keyboard_check_pressed(ord('E'));
        key_pickup_held = keyboard_check(ord('E'));
        key_up = (keyboard_check(ord('W')));
        key_down = (keyboard_check(ord('S')));
        key_escape = keyboard_check_pressed(vk_escape);
        break;
    }
    case 3: {
        if(gamepad_is_connected(0)) {
            key_right = (gamepad_axis_value(0, gp_axislh) > .5) || gamepad_button_check(0, gp_padr);
            key_left = (gamepad_axis_value(0, gp_axislh) < -.5) || gamepad_button_check(0, gp_padl);
            key_selectr = gamepad_button_check_pressed(0, gp_padr);
            key_selectl = gamepad_button_check_pressed(0, gp_padl);
            key_jump = gamepad_button_check_pressed(0, gp_face1);
            key_jump_held = gamepad_button_check(0, gp_face1);
            key_pickup = gamepad_button_check_pressed(0, gp_face3);
            key_pickup_held = gamepad_button_check(0, gp_face3);
            key_up =  gamepad_button_check(0, gp_padu) || (gamepad_axis_value(0, gp_axislv) < -.5);
            key_down = gamepad_button_check(0, gp_padd) || (gamepad_axis_value(0, gp_axislv) > .5);
            key_escape = gamepad_button_check_pressed(0, gp_start);
        }
        break;
    }
    case 4: {
        if(gamepad_is_connected(1)) {
            key_right = (gamepad_axis_value(1, gp_axislh) > .5) || gamepad_button_check(1, gp_padr);
            key_left = (gamepad_axis_value(1, gp_axislh) < -.5) || gamepad_button_check(1, gp_padl);
            key_selectr = gamepad_button_check_pressed(1, gp_padr);
            key_selectl = gamepad_button_check_pressed(1, gp_padl);
            key_jump = gamepad_button_check_pressed(1, gp_face1);
            key_jump_held = gamepad_button_check(1, gp_face1);
            key_pickup = gamepad_button_check_pressed(1, gp_face3);
            key_pickup_held = gamepad_button_check(1, gp_face3);
            key_up =  gamepad_button_check(1, gp_padu) || (gamepad_axis_value(1, gp_axislv) < -.5);
            key_down = gamepad_button_check(1, gp_padd) || (gamepad_axis_value(1, gp_axislv) > .5);
            key_escape = gamepad_button_check_pressed(1, gp_start);        
            }
        break;
    }
}
}
        
