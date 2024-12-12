// @desc ScreenShake(magnitude,frames)
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

with (oCamera)
{
	if (argument0 > shake_remain)
	{
		shake_magnitude = argument0;
		shake_remain = argument0;
		shake_length= argument1;
	}
}