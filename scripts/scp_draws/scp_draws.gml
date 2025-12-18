function draw_upgrade(_x,_y,_num){
	var _cost=999
	var _str=""
	switch _num
	{
		case 0:
		{
			draw_hourglass(_x,_y,16)
			
			_cost=10
			_str="Auto Teleporter"
			break;
		}
		case 1:
		{
			draw_asterisc(_x,_y,16)
			
			_cost=25
			_str="Multi Click"
			break;
		}
	}
	
	if !point_in_rectangle(mouse_x,mouse_y,_x+28,_y-5,_x+96,_y+16)
	{
		draw_rectangle(_x+28,_y-5,_x+96,_y+16,false)
	}
	else
	{
		draw_rectangle_colour(_x+28,_y-5,_x+96,_y+16, c_gray,c_gray,c_gray,c_gray, false)
		
		if (mouse_check_button_pressed(mb_left))
		{
			if (obj_ctrl.coins>=_cost)
			{
				obj_ctrl.coins-=_cost
				obj_shop.upgrades[_num]=true
				
				for (var _i=0; _i<10; _i++)
				instance_create_layer(_x,_y,layer,obj_shadow)
				
				update_upgrades()
			}
		}
	}
	draw_text_ext(_x-64,_y+16,_str,14,328)
	
	draw_text_ext_colour(_x+32,_y,_cost,100,100,c_black,c_black,c_black,c_black,1)
}

function update_upgrades()
{
	obj_ctrl.time_auto_limit = 0
	if (obj_shop.upgrades[0])
	{
		obj_ctrl.time_auto_limit = 600 * obj_shop.upgrades[0]
	}
	
	obj_ctrl.click_coins = 1
	if (obj_shop.upgrades[1])
	{
		obj_ctrl.click_coins = 1 + obj_shop.upgrades[1]
	}
}

function draw_x(_x,_y,_size)
{
	draw_line(_x-_size,_y-_size,_x+_size,_y+_size)
	draw_line(_x-_size,_y+_size,_x+_size,_y-_size)
}

function draw_asterisc(_x,_y,_size)
{
	draw_x(_x,_y,_size)
	 
	draw_line(_x-_size,_y,_x+_size,_y)
	draw_line(_x,_y-_size,_x,_y+_size)
}

function draw_infinity(_x,_y,_size)
{
	draw_circle(_x+_size,_y,_size,true)
	draw_circle(_x-_size,_y,_size,true)
}

function draw_hourglass(_x,_y,_size)
{
	draw_line(_x-_size,_y-_size,_x+_size,_y-_size)
	
	draw_x(_x,_y,_size)
	
	draw_line(_x-_size,_y+_size,_x+_size,_y+_size)
}

function draw_clock(_x,_y)
{
	draw_circle(_x,_y,16,true)
	draw_line(_x,_y,_x,_y-9)
	draw_line(_x,_y,_x+12,_y)
}