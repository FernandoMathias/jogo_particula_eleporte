if mouse_check_button_pressed(mb_left)
{
	if point_in_rectangle(mouse_x,mouse_y,x-size*1.5,y-size*1.5,x+size*1.5,y+size*1.5)
	{
		instance_create_layer(x,y,layer,obj_shadow)
	
		x=irandom_range(-360,360)+room_width/2
		y=irandom_range(-360,360)+room_height/2
	
		coins+=click_coins
	}
}

if time_auto>=time_auto_limit
{
	instance_create_layer(x,y,layer,obj_shadow)
	
	x=irandom_range(-360,360)+room_width/2
	y=irandom_range(-360,360)+room_height/2
	
	coins++
	time_auto=0
	
	for (var _i=0; _i<10; _i++)
	instance_create_layer(room_width/2+240,24,layer,obj_particles)
}
if time_auto_limit>0
time_auto++

x+=random_range(-1,1)
y+=random_range(-1,1)