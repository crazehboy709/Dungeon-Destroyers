//If the player is normal
if mouse_check_button(mb_left) && canshoot = true {
    var i;
    i = instance_create(x,y,obj_shuriken);
    i.image_angle = point_direction(x,y,mouse_x,mouse_y);
    i.direction = i.image_angle + choose(15,10);
    i = instance_create(x,y,obj_shuriken);
    i.image_angle = point_direction(x,y,mouse_x,mouse_y);
    i.direction = i.image_angle
    i = instance_create(x,y,obj_shuriken);
    i.image_angle = point_direction(x,y,mouse_x,mouse_y);
    i.direction = i.image_angle + choose(-15,-10)
    canshoot = false;
    timer[0] = 0.6*60
}

if timer[0] > 0 {
    timer[0] -= 1*delta
} else {
    canshoot = true;
    bow = 0;
}
if canshoot = false && (timer[0] != 0 || bow != 0) {
    if bow > 4 {
        bow = 0
    }
    bow+=0.15*delta
}
