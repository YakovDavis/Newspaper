draw_sprite(spr_ts_lowres, -1, x, y);

if (!surface_exists(dust_surf))
{
	dust_surf = surface_create(128, 128);
    surface_set_target(dust_surf);
    draw_clear_alpha(c_white, 1);
	surface_reset_target();
}

if (!surface_exists(dust_hires_surf))
{
	dust_hires_surf = surface_create(512, 512);
    surface_set_target(dust_hires_surf);
    draw_clear_alpha(c_white, 1);
	surface_reset_target();
}

dust_mask = sprite_create_from_surface(dust_surf, 0, 0, 85, 64, false, false, 0, 0);
sprite_set_alpha_from_sprite(dust_sprite, dust_mask);
draw_sprite(dust_sprite, -1, x, y);
sprite_delete(dust_mask);

// Warning: the following code sucks pp

if (global.inspection_mode == "magnifying")
{
	var tmp_x = round((mouse_x - x) / sprite_width * 360);
	var tmp_y = round((mouse_y - y) / sprite_height * 270);
	
	if (global.magnifying)
	{
		draw_sprite_part(spr_ts_hires, -1, tmp_x - magn_center_margins - magn_size_center / 2 + border_size, tmp_y - magn_center_margins - magn_size_center / 2 + border_size, magn_size_center + magn_center_margins * 2, magn_size_center + magn_center_margins * 2, mouse_x - magn_size_center / 2 - magn_center_margins, mouse_y - magn_size_center / 2 - magn_center_margins);
		draw_sprite_part(spr_ts_hires, -1, tmp_x - magn_size_center / 2 + border_size - (magn_size - magn_size_center) / 2, tmp_y  - magn_size_center / 2 + border_size, (magn_size - magn_size_center) / 2, magn_size_center, mouse_x - magn_size_center / 2 - (magn_size - magn_size_center) / 2, mouse_y - magn_size_center / 2);
		draw_sprite_part(spr_ts_hires, -1, tmp_x- magn_size_center / 2 + border_size + magn_size_center, tmp_y  - magn_size_center / 2 + border_size, (magn_size - magn_size_center) / 2, magn_size_center, mouse_x - magn_size_center / 2 + magn_size_center, mouse_y - magn_size_center / 2);
		draw_sprite_part(spr_ts_hires, -1, tmp_x - magn_size_center / 2 + border_size, tmp_y  - magn_size_center / 2 + border_size - (magn_size - magn_size_center) / 2, magn_size_center, (magn_size - magn_size_center) / 2, mouse_x - magn_size_center / 2, mouse_y - magn_size_center / 2 - (magn_size - magn_size_center) / 2);
		draw_sprite_part(spr_ts_hires, -1, tmp_x - magn_size_center / 2 + border_size, tmp_y  - magn_size_center / 2 + border_size + magn_size_center, magn_size_center, (magn_size - magn_size_center) / 2, mouse_x - magn_size_center / 2, mouse_y - magn_size_center / 2 + magn_size_center);
		
		dust_hires_mask = sprite_create_from_surface(dust_hires_surf, 0, 0, 460, 370, false, false, 0, 0);
		sprite_set_alpha_from_sprite(dust_hires_sprite, dust_hires_mask);
		
		draw_sprite_part(dust_hires_sprite, -1, tmp_x - magn_center_margins - magn_size_center / 2 + border_size, tmp_y - magn_center_margins - magn_size_center / 2 + border_size, magn_size_center + magn_center_margins * 2, magn_size_center + magn_center_margins * 2, mouse_x - magn_size_center / 2 - magn_center_margins, mouse_y - magn_size_center / 2 - magn_center_margins);
		draw_sprite_part(dust_hires_sprite, -1, tmp_x - magn_size_center / 2 + border_size - (magn_size - magn_size_center) / 2, tmp_y  - magn_size_center / 2 + border_size, (magn_size - magn_size_center) / 2 - magn_center_margins, magn_size_center, mouse_x - magn_size_center / 2 - (magn_size - magn_size_center) / 2, mouse_y - magn_size_center / 2);
		draw_sprite_part(dust_hires_sprite, -1, tmp_x - magn_size_center / 2 + border_size + magn_center_margins, tmp_y  - magn_size_center / 2 + border_size, (magn_size - magn_size_center) / 2 - magn_center_margins, magn_size_center, mouse_x - magn_size_center / 2 + magn_size_center + magn_center_margins, mouse_y - magn_size_center / 2);
		draw_sprite_part(dust_hires_sprite, -1, tmp_x - magn_size_center / 2 + border_size, tmp_y  - magn_size_center / 2 + border_size - (magn_size - magn_size_center) / 2, magn_size_center, (magn_size - magn_size_center) / 2 - magn_center_margins, mouse_x - magn_size_center / 2, mouse_y - magn_size_center / 2 - (magn_size - magn_size_center) / 2);
		draw_sprite_part(dust_hires_sprite, -1, tmp_x - magn_size_center / 2 + border_size, tmp_y  - magn_size_center / 2 + border_size + magn_size_center + magn_center_margins, magn_size_center, (magn_size - magn_size_center) / 2 - magn_center_margins, mouse_x - magn_size_center / 2, mouse_y - magn_size_center / 2 + magn_size_center + magn_center_margins);
		
		sprite_delete(dust_hires_mask);
	}
}