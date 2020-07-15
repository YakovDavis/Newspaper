if (global.inspection_mode == "dusting")
{
	if (!surface_exists(dust_surf))
	{
		dust_surf = surface_create(128, 128);
	    surface_set_target(dust_surf);
	    draw_clear_alpha(c_white, 1);
		surface_reset_target();
	}
	
	surface_set_target(dust_surf);
	draw_circle_color(mouse_x - x, mouse_y - y, 8, c_black, c_black, false)
	surface_reset_target();
	
	if (!surface_exists(dust_hires_surf))
	{
		dust_hires_surf = surface_create(512, 512);
	    surface_set_target(dust_hires_surf);
	    draw_clear_alpha(c_white, 1);
		surface_reset_target();
	}
	
	surface_set_target(dust_hires_surf);
	draw_circle_color(mouse_x - x, mouse_y - y, 8, c_black, c_black, false)
	surface_reset_target();
}

