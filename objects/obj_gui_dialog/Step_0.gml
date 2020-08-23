var easeOutCurve = animcurve_get(crv_ease_out);
var easeOutChannel = animcurve_get_channel(easeOutCurve, "y");

if (animcurve_channel_evaluate(easeOutChannel, large_bubble_timing * bubble_speed) > 0)
{
	large_bubble_timing += delta_time;
	large_bubble_y = animcurve_channel_evaluate(easeOutChannel, large_bubble_timing  * bubble_speed) + large_bubble_highpoint;
}
else
{
	if (animcurve_channel_evaluate(easeOutChannel, answer_1_timing  * bubble_speed) > 0)
	{
		answer_1_timing += delta_time;
		answer_1_y = animcurve_channel_evaluate(easeOutChannel, answer_1_timing  * bubble_speed) + answer_1_highpoint;
	}
	else
	{
		if (animcurve_channel_evaluate(easeOutChannel, answer_2_timing  * bubble_speed) > 0)
		{
			answer_2_timing += delta_time;
			answer_2_y = animcurve_channel_evaluate(easeOutChannel, answer_2_timing * bubble_speed) + answer_2_highpoint;
		}
		else
		{
			if (animcurve_channel_evaluate(easeOutChannel, answer_3_timing * bubble_speed) > 0)
			{
				answer_3_timing += delta_time;
				answer_3_y = animcurve_channel_evaluate(easeOutChannel, answer_3_timing * bubble_speed) + answer_3_highpoint;
			}
		}
	}
}