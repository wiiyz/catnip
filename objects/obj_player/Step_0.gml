#region Controles
key_up = keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_space)
key_left = keyboard_check(ord("A"));
key_down = keyboard_check(ord("S"));
key_right = keyboard_check(ord("D"));
#endregion

#region Movimento
var move = key_right - key_left

#region aceleração
//aceleração de movimento
if (place_meeting(x,y+1,obj_wall)) and move != 0 and acceleration < maxacelleration {
	acceleration += 0.1
}
else if (!place_meeting(x,y+1,obj_wall)) and acceleration > 0 {
	acceleration -= 0.05
}

if (move = 0) and (place_meeting(x,y+1,obj_wall)){
	if acceleration > 0 acceleration -= 0.5
	else if acceleration < 0 acceleration = 0
}
#endregion

hspd = move * (spd + acceleration)
vspd += grv

if (hspd != 0) image_xscale = sign(hspd)

//colisão horizontal
if (place_meeting(x+hspd,y,obj_wall)){
	while(!place_meeting(x+sign(hspd),y,obj_wall)) {
		x = x + sign(hspd)
	}
	hspd = 0
}
x = x + hspd

//colisão vertical
if (place_meeting(x,y+vspd,obj_wall)){
	while(!place_meeting(x,y+sign(vspd),obj_wall)) {
		y = y + sign(vspd)
	}
	vspd = 0
}
y = y + vspd

//JUMP
if (place_meeting(x,y+1,obj_wall)) and key_up{
	vspd -= 12
}
#endregion
