if (hp <= 0)
{
	with (instance_create_layer(x,y,layer,oEnemydead))	
	{
		direction = other.hitfrom;
		hsp = lengthdir_x(3,direction);
		hsp = lengthdir_y(3,direction);
		image_xscale = sign(hsp);
	}
	
	
	
	instance_destroy();
	
	
	
}