if mouse_check_button_pressed(mb_left)
{
	if point_in_rectangle(mouse_x,mouse_y,x-size*1.5,y-size*1.5,x+size*1.5,y+size*1.5)
	{
		teleport_particle(self)
	
		obj_ctrl.coins+=obj_ctrl.click_coins
	}
}

x+=random_range(-1,1)
y+=random_range(-1,1)