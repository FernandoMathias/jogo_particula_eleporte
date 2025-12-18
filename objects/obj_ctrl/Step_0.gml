if time_auto>=time_auto_limit
{
	teleport_all_particles()
	
	coins+=auto_coins
	time_auto=0
	
	for (var _i=0; _i<10; _i++)
	instance_create_layer(room_width/2+240,24,layer,obj_shadow)
}
if time_auto_limit>0
time_auto++