/// Move too next room

with (oPlayer)
{
	if (hascontrol)
	{
		hascontrol = false;
		game_end(); break;
	}
} 