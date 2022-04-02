if place_meeting(x,y,obj_wall){
	repeat(part_number){
		instance_create_layer(x+random_range(-2,2),y,"Entities",obj_meow_particle)
	}
	instance_destroy()
}
