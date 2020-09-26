draw_sprite(lowres_sprite, res_id, x, y);

if (!surface_exists(rust_surf))
{
	rust_surf = surface_create(128, 128);
    surface_set_target(rust_surf);
    draw_clear_alpha(c_white, 1);
	surface_reset_target();
}

if (!surface_exists(rust_hires_surf))
{
	rust_hires_surf = surface_create(512, 512);
    surface_set_target(rust_hires_surf);
    draw_clear_alpha(c_white, 1);
	surface_reset_target();
}

rust_mask = sprite_create_from_surface(rust_surf, 0, 0, 85, 64, false, false, 0, 0);
sprite_set_alpha_from_sprite(rust_sprite, rust_mask);
draw_sprite(rust_sprite, res_id, x, y);
sprite_delete(rust_mask);


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
draw_sprite(dust_sprite, res_id, x, y);
sprite_delete(dust_mask);


// Warning: the following code NE sucks pp

if (global.inspection_mode == "magnifying")
{
	var tmp_x = round((mouse_x - x) / sprite_width * 360);
	var tmp_y = round((mouse_y - y) / sprite_height * 270);
	
	if (global.magnifying)
	{
		var strop = border_size - magn_size / 2;
        var strop_2 = border_size - magn_size_center / 2;
        var wasr = magn_size_center + magn_center_margins * 2;
        var sadf = magn_size_center / 2 + magn_center_margins;
		draw_sprite_part(hires_sprite, res_id, tmp_x - magn_center_margins + strop_2 , tmp_y + strop_2 - magn_center_margins , wasr, wasr, mouse_x - sadf , mouse_y -sadf);
		draw_sprite_part(hires_sprite, res_id, tmp_x + strop , tmp_y + strop_2 , magn_size/2 - sadf , magn_size_center, mouse_x - magn_size / 2, mouse_y - magn_size_center / 2);
		draw_sprite_part(hires_sprite, res_id, tmp_x+ border_size +sadf, tmp_y + strop_2, magn_size / 2 - sadf, magn_size_center, mouse_x + sadf, mouse_y - magn_size_center / 2);
		draw_sprite_part(hires_sprite, res_id, tmp_x + strop_2, tmp_y  + strop, magn_size_center , magn_size / 2 - sadf, mouse_x - magn_size_center / 2, mouse_y - magn_size / 2);
		draw_sprite_part(hires_sprite, res_id, tmp_x + strop_2, tmp_y  + border_size + sadf, magn_size_center, magn_size / 2 - sadf, mouse_x - magn_size_center / 2, mouse_y + sadf );
		
		rust_hires_mask = sprite_create_from_surface(rust_hires_surf, 0, 0, 460, 370, false, false, 0, 0);
		sprite_set_alpha_from_sprite(rust_hires_sprite, rust_hires_mask);
		
		draw_sprite_part(rust_hires_sprite, res_id, tmp_x - magn_center_margins + strop_2 , tmp_y + strop_2 - magn_center_margins , wasr, wasr, mouse_x - sadf , mouse_y -sadf);
		draw_sprite_part(rust_hires_sprite, res_id, tmp_x + strop , tmp_y + strop_2 , magn_size/2 - sadf , magn_size_center, mouse_x - magn_size / 2, mouse_y - magn_size_center / 2);
		draw_sprite_part(rust_hires_sprite, res_id, tmp_x+ border_size +sadf, tmp_y + strop_2, magn_size / 2 - sadf, magn_size_center, mouse_x + sadf, mouse_y - magn_size_center / 2);
		draw_sprite_part(rust_hires_sprite, res_id, tmp_x + strop_2, tmp_y  + strop, magn_size_center , magn_size / 2 - sadf, mouse_x - magn_size_center / 2, mouse_y - magn_size / 2);
		draw_sprite_part(rust_hires_sprite, res_id, tmp_x + strop_2, tmp_y  + border_size + sadf, magn_size_center, magn_size / 2 - sadf, mouse_x - magn_size_center / 2, mouse_y + sadf );
		
		sprite_delete(rust_hires_mask);
		
		dust_hires_mask = sprite_create_from_surface(dust_hires_surf, 0, 0, 460, 370, false, false, 0, 0);
		sprite_set_alpha_from_sprite(dust_hires_sprite, dust_hires_mask);
		
		draw_sprite_part(dust_hires_sprite, res_id, tmp_x - magn_center_margins + strop_2 , tmp_y + strop_2 - magn_center_margins , wasr, wasr, mouse_x - sadf , mouse_y -sadf);
		draw_sprite_part(dust_hires_sprite, res_id, tmp_x + strop , tmp_y + strop_2 , magn_size/2 - sadf , magn_size_center, mouse_x - magn_size / 2, mouse_y - magn_size_center / 2);
		draw_sprite_part(dust_hires_sprite, res_id, tmp_x+ border_size +sadf, tmp_y + strop_2, magn_size / 2 - sadf, magn_size_center, mouse_x + sadf, mouse_y - magn_size_center / 2);
		draw_sprite_part(dust_hires_sprite, res_id, tmp_x + strop_2, tmp_y  + strop, magn_size_center , magn_size / 2 - sadf, mouse_x - magn_size_center / 2, mouse_y - magn_size / 2);
		draw_sprite_part(dust_hires_sprite, res_id, tmp_x + strop_2, tmp_y  + border_size + sadf, magn_size_center, magn_size / 2 - sadf, mouse_x - magn_size_center / 2, mouse_y + sadf );
		
		sprite_delete(dust_hires_mask);
	}
}