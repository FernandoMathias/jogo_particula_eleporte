draw_rectangle(x-size,y-size,x+size,y+size,true)

size-=size_lose

if size<=0
{
	instance_destroy()	
}