function scr_up_curve(argument0, argument1, argument2) {
	if (1 / exp(argument0 * argument1) > 1/1080)
	{
		return 1 / exp(argument0 * argument1) + argument2;
	}
	else
	{
		return argument2;
	}


}
