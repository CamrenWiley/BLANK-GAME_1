x = oPlayer.x;
y = oPlayer.y+4;

image_angle =point_direction(x,y,mouse_x,mouse_y);

firingdelay = firingdelay - 1;
recoil = max(0,recoil -1);

if (mouse_check_button(mb_left)) and (firingdelay < 0)
{
	firingdelay = 5;
	recoil = 4;
	ScreenShake(2,10);
	audio_play_sound(snShot,3,false);
	with (instance_create_layer(x,y,"Bullets",oBullet))
	{
		speed = 25
		direction = other.image_angle + random_range(-5,5);
		image_angle = direction;
	}		
}

x=x - lengthdir_x(recoil,image_angle);
y=y - lengthdir_x(recoil,image_angle);

if (image_angle > 90) and (image_angle < 270)
{
	image_yscale = -1;	
}
else
{
	image_yscale = 1;
}