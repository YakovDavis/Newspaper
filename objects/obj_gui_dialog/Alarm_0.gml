if (countdown > 0)
{
	countdown--;
	if (has_answers)
	{
		alarm[0] = 100;
	}
	else
	{
		alarm[0] = 20;
	}
}
else
{
	animation_status = "fly_away";
}