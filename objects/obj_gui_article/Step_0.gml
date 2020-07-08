if (mouse_button == mb_left)
{
	hold = 3;
}
else
{
	hold = 0;
}

if (finished)
{
	if ((mouse_x < link_lower_x)and(mouse_x > link_upper_x)and(mouse_y < link_lower_y)and(mouse_y > link_upper_y))
	{
		on_link = true;
	}
	else
	{
		on_link = false;
	}
}

if (string_length(title_draw) < title_length) 
{
    title_characters += increase * (1 + hold);
    for (var i = string_length(title_draw) + 1; i <= title_characters; i += 1)
	{
		if (string_char_at(title, i) != "\\")
		{
			title_draw += string_char_at(title, i);
		}
		else
		{
			title_draw += " ";
		}
	}
}

if (string_length(text_draw) < text_length) 
{
    text_characters += increase * (1 + hold);
    for (var i = string_length(text_draw) + 1; i <= text_characters; i += 1)
	{
		if (string_char_at(text, i) != "\\")
		{
			text_draw += string_char_at(text, i);
		}
		else
		{
			text_draw += "\n";
		}
	}
}
else
{
	finished = true;
}

if (mouse_check_button_pressed(mb_left))
{
	if ((finished)and(!hands_off)and(on_link))
	{
		hands_off = true;
		alarm[0] = 80;
		instance_create_depth(400, 100, -10, obj_art_save);
		switch (global.focus)
		{
			case 1: var art = instance_find(obj_article1, 0); art.highlighted = true; break;
			case 2: var art = instance_find(obj_article2, 0); art.highlighted = true; break;
			case 3: var art = instance_find(obj_article3, 0); art.highlighted = true; break;
		}
	}
}