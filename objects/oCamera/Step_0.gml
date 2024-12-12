///Create Camera

//Update obj position
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
	
	if ((follow).object_index == oDead)
	{
		x =xTo;
		y =yTo;
	}
}

//Update obj position
x += (xTo - x) / 5;
y += (yTo - y) / 5;

//keep camera insode
x = clamp(x,view_w_half+buff,room_width-view_w_half-buff);
y = clamp(y,view_h_half+buff,room_height-view_h_half-buff);

//Screen shake
x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));

//Update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);

if (layer_exists("Bkg1"))
{
	layer_x("Bkg1",x/5)	
}
if (layer_exists("Bkg2"))
{
	layer_x("Bkg2",x/4)	
}
if (layer_exists("Bkg3"))
{
	layer_x("Bkg3",x/3.5)	
}