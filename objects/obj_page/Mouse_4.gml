if (global.gamestate == "newspaper")
{
	if ((mouseHoveringChangePage)and(pageNumber > 0)and(pageNumber < pageCount))
	{
		if (x + 10 < room_width / 2)
		{
			var i;
			for (i = 0; i < 2; i += 1)
			{
				page = instance_find(obj_page, i);
				page.pageNumber -= 2;
			}
		}
		else
		{
			var i;
			for (i = 0; i < 2; i += 1)
			{
				page = instance_find(obj_page, i);
				page.pageNumber += 2;
			}
		}
	}
}