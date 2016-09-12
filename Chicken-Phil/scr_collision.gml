collide = argument0;

//Ice Collision
if(place_meeting(x, y + 1, obj_ice)) {
    slide = .001;
    friction = 0;
    image_speed = .35;
}
else {
    slide = .15;
    friction = .75;
}

//Normal Collision
if (place_meeting(x + hsp, y, collide)) {
        while(!place_meeting(x + sign(hsp), y, collide)) {
            x += sign(hsp);            
        }
        comboShake = 0;
        image_speed = (.25 - (hsp * .05)) * frames; 
        hsp = 0;
    }
   
x += hsp;

if (place_meeting(x, y + vsp, collide)) {
    while(!place_meeting(x, y + sign(vsp), collide)) {
        y += sign(vsp);
    }
    comboShake = 0;
    vsp = 0;
}
y += vsp;
