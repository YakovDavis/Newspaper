draw_set_color(c_white);
draw_point(50, 50);

if (global.inspection_mode == "magnifying")
{
	if (global.magnifying)
	{
		//draw_sprite(spr_magn_glass_large, -1, round(mouse_x) - 15, round(mouse_y) - 15);
	}
	else
	{
		draw_sprite(spr_magn_glass_small, -1, round(mouse_x) - 5, round(mouse_y) - 5);
	}
}

if (global.inspection_mode == "dusting")
{
	draw_sprite(spr_dusting_brush, -1, round(mouse_x) - 6, round(mouse_y) - 6);
}