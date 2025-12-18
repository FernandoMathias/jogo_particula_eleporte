function teleport_particle(_obj=noone){
	//Animação
	var _shadow = instance_create_layer(_obj.x,_obj.y,_obj.layer,obj_shadow)
	_shadow.size=16
	_shadow.direction=0
	_shadow.speed=0
	_shadow.size_lose=1
	
	//Teleporte
	_obj.x=irandom_range(-360,360)+room_width/2
	_obj.y=irandom_range(-360,360)+room_height/2
}

function teleport_all_particles(){
	var _num = instance_number(obj_particle)
	for (var _i=0; _i<_num; _i++)
	{
		teleport_particle(instance_find(obj_particle,_i))
	}
}