if place_meeting(x,y,obj_wall){
	repeat(part_number){
		instance_create_layer(x+random_range(-2,2),y,"Instances",obj_meow_particle)
	}
	instance_destroy()
}
