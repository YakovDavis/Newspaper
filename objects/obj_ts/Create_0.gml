/// @description: Modify this for different artifacts

lowres_sprite = spr_ts_lowres;
hires_sprite = spr_ts_hires;

dust_surf = surface_create(128, 128);
surface_set_target(dust_surf);
draw_clear_alpha(c_white, 1);
surface_reset_target();
dust_sprite = sprite_duplicate(spr_ts_lowres_dust);

dust_hires_surf = surface_create(512, 512);
surface_set_target(dust_hires_surf);
draw_clear_alpha(c_white, 1);
surface_reset_target();
dust_hires_sprite = sprite_duplicate(spr_ts_hires_dust);

var metal_surf = surface_create(128, 128);
surface_set_target(metal_surf);
draw_sprite(spr_ts_metalmap, -1, 0, 0);
surface_reset_target();
metal_buffer = buffer_create(128*128*4, buffer_fixed, 1);
buffer_get_surface(metal_buffer, metal_surf, 0, 0, 0);
surface_free(metal_surf);