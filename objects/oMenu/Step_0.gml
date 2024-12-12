/// Contorl Menu

//Item ease in
menu_x += (menu_x_target - menu_x) / menu_speed;

//Controls
if (menu_control)
{
	if (keyboard_check_pressed(vk_up))
	{
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
	}
	if (keyboard_check_pressed(vk_down))
	{
		menu_cursor--;
		if (menu_cursor <0) menu_cursor =  menu_items -1;
	}
	if (keyboard_check_pressed(vk_enter))
	{
		menu_x_target = gui_width+200;
		menu_commited = menu_cursor;
		ScreenShake(4,30);
		menu_control = false;
		audio_play_sound(snMenu,10,false);
	}
}

if (menu_x > gui_width+150) and (menu_commited != -1)
{
	switch (menu_commited)
	{
		case 2: default: SlideTransition(TRANS_MODE.NEXT); break; 
		case 0: game_end(); break;
	}
}