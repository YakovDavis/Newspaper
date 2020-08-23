if (pageNumber > 0)
{
	if (x + 10 > room_width / 2)
	{
		draw_sprite(spr_blankpageright, -1, x, y)
	}
	else
	{
		draw_sprite(spr_blankpageleft, -1, x, y)
	}
	
	if(pageNumber == 1)
	{
		draw_set_font(font_papertext)
		draw_set_colour(textColor);
		draw_text(x + sprite_width - string_width(dateNP) - 6, y+6, dateNP);
		draw_set_font(font_papertitle)
		draw_rectangle(x+6, y+14, x + sprite_width - 6, y+14, false);
		draw_set_colour(titleColor);
		draw_text(x+6, y+17, nameNP);
		draw_rectangle(x+6, y+9 + string_height(nameNP), x + string_width(nameNP) + 6, y + 9 + string_height(nameNP), false);
		instance_activate_object(obj_article1);
		instance_activate_object(obj_article2);
		instance_activate_object(obj_article3);
	}
	else
	{
		instance_deactivate_object(obj_article1);
		instance_deactivate_object(obj_article2);
		instance_deactivate_object(obj_article3);
	}
	
	draw_set_font(font_papertext)
	draw_set_colour(textColor);
	draw_text(x + (sprite_width - string_width(pageNumber)) / 2, y + sprite_height - string_height(pageNumber), pageNumber);
	
	if ((mouseHoveringChangePage)and(pageNumber < pageCount))
	{
		if (x + 10 < room_width / 2)
		{
			draw_sprite(spr_pageprev, -1, x, y + sprite_height - 32);
			if (pageNumber > 2)
			{
				draw_sprite(spr_page_corner_left, -1, x, y + sprite_height - 32);
			}
		}
		else
		{
			draw_sprite(spr_pagenext, -1, x + sprite_width - 32, y + sprite_height - 32);
			draw_sprite(spr_page_corner_right, -1, x + sprite_width - 32, y + sprite_height - 32);
		}
	}
	if ((!mouseHoveringChangePage)or(pageNumber == pageCount))
	{
		if (x + 10 < room_width / 2)
		{
			draw_sprite(spr_page_corner_left, -1, x, y + sprite_height - 32);
		}
		else
		{
			draw_sprite(spr_page_corner_right, -1, x + sprite_width - 32, y + sprite_height - 32);
		}
	}
}