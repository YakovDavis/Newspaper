dust_surf = surface_create(128, 128);
surface_set_target(dust_surf);
draw_clear_alpha(c_white, 1);
surface_reset_target();
dust_sprite = sprite_duplicate(spr_ts_lowres_dust);