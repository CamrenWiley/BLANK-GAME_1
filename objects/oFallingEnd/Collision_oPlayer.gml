/// Move too next room

with (oPlayer)
{
	if (hascontrol)
	{
		ScreenShake(6,60);
		hascontrol = false;
		SlideTransition(TRANS_MODE.GOTO,room);
	}
} 