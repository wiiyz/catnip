if obj_cat.angulo > 90.00 and obj_cat.angulo < 270.00 {
	image_yscale = -1
	image_xscale = -1
}

image_angle = obj_cat.angulo
move_towards_point(mouse_x,mouse_y,8)

part_number = random_range(3,7)
