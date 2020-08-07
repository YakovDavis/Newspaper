global.cutoff_y = 180;

scaling_factor = 1; //window_get_height() / 1080;

gui_surf = surface_create(1920, 1080);
surface_set_target(gui_surf);
draw_clear_alpha(c_white, 0);
surface_reset_target();