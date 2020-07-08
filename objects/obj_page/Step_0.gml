if (global.gamestate == "newspaper")
{
	if (x + 10 > room_width / 2)
	{
		if ((mouse_x > x + sprite_width - 32)and(mouse_x < x + sprite_width)and(mouse_y > y + sprite_height - 32)and(mouse_y < y + sprite_height))
		{
			mouseHoveringChangePage = true;
		}
		else
		{
			mouseHoveringChangePage = false;
		}
	}
	else
	{
		if ((mouse_x >= x)and(mouse_x < x + 32)and(mouse_y > y + sprite_height - 32)and(mouse_y < y + sprite_height))
		{
			mouseHoveringChangePage = true;
		}
		else
		{
			mouseHoveringChangePage = false;
		}
	}
}