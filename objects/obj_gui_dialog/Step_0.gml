var easeOutCurve = animcurve_get(crv_ease_out);
var easeOutChannel = animcurve_get_channel(easeOutCurve, "y");

var easeInCurve = animcurve_get(crv_ease_in);
var easeInChannel = animcurve_get_channel(easeInCurve, "y");

if (animation_status == "lb_bubble")
{
	if (animcurve_channel_evaluate(easeOutChannel, large_bubble_timing * bubble_speed) > 0)
	{
		large_bubble_timing += delta_time;
		large_bubble_y = animcurve_channel_evaluate(easeOutChannel, large_bubble_timing  * bubble_speed) + large_bubble_highpoint;
	}
	else
	{
		animation_status = "lb_text"
	}
}
if (animation_status == "lb_text")
{
	if (string_length(large_bubble_text_draw) < current_text_length) 
	{
	    current_text_characters += increase * (1 + hold);
	    for (var i = string_length(large_bubble_text_draw) + 1; i <= current_text_characters; i += 1)
		{
			if (string_char_at(large_bubble_text, i) != "\\")
			{
				large_bubble_text_draw += string_char_at(large_bubble_text, i);
			}
			else
			{
				large_bubble_text_draw += "\n";
			}
		}
	}
	else
	{
		animation_status = "ans_1_bubble";
		current_text_characters = 0;
		current_text_length = string_length(answer_1_text);
	}
}
if (animation_status == "ans_1_bubble")
{
	if (animcurve_channel_evaluate(easeOutChannel, answer_1_timing  * bubble_speed) > 0)
	{
		answer_1_timing += delta_time;
		answer_1_y = animcurve_channel_evaluate(easeOutChannel, answer_1_timing  * bubble_speed) + answer_1_highpoint;
	}
	else
	{
		if (has_answers)
		{
			animation_status = "ans_1_text";
		}
		else
		{
			animation_status = "dots_bubble";
		}
	}
}
if (animation_status == "ans_1_text")
{
	if (string_length(answer_1_text_draw) < current_text_length) 
	{
	    current_text_characters += increase * (1 + hold);
	    for (var i = string_length(answer_1_text_draw) + 1; i <= current_text_characters; i += 1)
		{
			answer_1_text_draw += string_char_at(answer_1_text, i);
		}
	}
	else
	{
		animation_status = "ans_2_bubble";
		current_text_characters = 0;
		current_text_length = string_length(answer_2_text);
	}
}
if (animation_status == "ans_2_bubble")
{
	if (animcurve_channel_evaluate(easeOutChannel, answer_2_timing  * bubble_speed) > 0)
	{
		answer_2_timing += delta_time;
		answer_2_y = animcurve_channel_evaluate(easeOutChannel, answer_2_timing * bubble_speed) + answer_2_highpoint;
	}
	else
	{
		animation_status = "ans_2_text";
	}
}
if (animation_status == "ans_2_text")
{
	if (string_length(answer_2_text_draw) < current_text_length) 
	{
	    current_text_characters += increase * (1 + hold);
	    for (var i = string_length(answer_2_text_draw) + 1; i <= current_text_characters; i += 1)
		{
			answer_2_text_draw += string_char_at(answer_2_text, i);
		}
	}
	else
	{
		animation_status = "ans_3_bubble";
		current_text_characters = 0;
		current_text_length = string_length(answer_3_text);
	}
}
if (animation_status == "ans_3_bubble")
{
	if (animcurve_channel_evaluate(easeOutChannel, answer_3_timing * bubble_speed) > 0)
	{
		answer_3_timing += delta_time;
		answer_3_y = animcurve_channel_evaluate(easeOutChannel, answer_3_timing * bubble_speed) + answer_3_highpoint;
	}
	else
	{
		animation_status = "ans_3_text";
	}
}
if (animation_status == "ans_3_text")
{
	if (string_length(answer_3_text_draw) < current_text_length) 
	{
	    current_text_characters += increase * (1 + hold);
	    for (var i = string_length(answer_3_text_draw) + 1; i <= current_text_characters; i += 1)
		{
			answer_3_text_draw += string_char_at(answer_3_text, i);
		}
	}
	else
	{
		animation_status = "dots_bubble";
	}
}
if (animation_status == "dots_bubble")
{
	if (animcurve_channel_evaluate(easeOutChannel, dots_timing * bubble_speed) > 0)
	{
		dots_timing += delta_time;
		dots_y = animcurve_channel_evaluate(easeOutChannel, dots_timing * bubble_speed) + dots_highpoint;
	}
	else
	{
		animation_status = "dots";
		alarm[0] = 10;
	}
}
if (animation_status == "fly_away")
{
	if (animcurve_channel_evaluate(easeInChannel, fly_away_timing * bubble_speed) < 1)
	{
		fly_away_timing += delta_time;
		fly_away_offset = animcurve_channel_evaluate(easeInChannel, fly_away_timing * bubble_speed);
	}
	else
	{
		instance_destroy();
	}
}

if ((animation_status == "dots")and(has_answers))
{
	answer_1_selected = ((mouse_x >  (1 - answer_1_length * 0.084) * 480 - 26)and(mouse_x < 455)and(mouse_y > answer_1_y * 270 - 3)and(mouse_y < answer_1_y * 270 + 20));
	answer_2_selected = ((mouse_x >  (1 - answer_2_length * 0.084) * 480 - 26)and(mouse_x < 455)and(mouse_y > answer_2_y * 270 - 3)and(mouse_y < answer_2_y * 270 + 20));
	answer_3_selected = ((mouse_x >  (1 - answer_3_length * 0.084) * 480 - 26)and(mouse_x < 455)and(mouse_y > answer_3_y * 270 - 3)and(mouse_y < answer_3_y * 270 + 20));
}