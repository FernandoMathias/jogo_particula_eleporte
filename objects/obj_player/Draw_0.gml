if time_auto!=-1
{
	draw_rectangle(room_width/2-240,16,room_width/2+240,32,true)
	draw_rectangle(room_width/2-240,16,room_width/2-240 + (time_auto/time_auto_limit)*480,32,false)
}
draw_rectangle(x-size,y-size,x+size,y+size,false)