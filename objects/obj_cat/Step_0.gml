x = obj_player.x
y = obj_player.y
angulo= point_direction(x,y,mouse_x,mouse_y)
image_angle = angulo

if angulo > 90.00 and angulo < 270.00 {
	image_yscale = -1
}
else if angulo < 90.00 or angulo > 270.00 {
	image_yscale = 1
}

if mouse_check_button_pressed(mb_left) {
	instance_create_layer(x,y,"Entities",obj_meow)
}
