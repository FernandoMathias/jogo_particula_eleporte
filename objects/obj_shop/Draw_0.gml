if (shop_open_y>1.5)
{
	draw_line(x-96,y,x+96,y)
	
	draw_line(x-96,y,x-96,y+shop_open_y)
	draw_line(x+96,y,x+96,y+shop_open_y)
	
	draw_line(x-96,y+shop_open_y,x+96,y+shop_open_y)
}

draw_circle(x,y,32,false)
draw_text_ext_colour(x-10,y-8,obj_ctrl.coins,100,100,c_black,c_black,c_black,c_black,1)

if shop_open
{	
	shop_open_y=lerp(shop_open_y,512,0.05)
}
else
{
	shop_open_y=lerp(shop_open_y,0,0.05)
}

var _y=96
for(var _i=0; _i<32 and _y<480 and _y<shop_open_y+32; _i++)
{
	if (!upgrades[_i])
	{
		draw_upgrade(x,y+_y,_i)
		_y+=96
	}
}

if (shop_open_y>50)
{	
	draw_line(x-96,y,x-96,y+shop_open_y)
	draw_line(x+96,y,x+96,y+shop_open_y)
		
	draw_rectangle_colour(x-96,y+shop_open_y,x+96,y+shop_open_y+128,c_black,c_black,c_black,c_black,false)
	
	draw_line(x-96,y+shop_open_y,x+96,y+shop_open_y)
}