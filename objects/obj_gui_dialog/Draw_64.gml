if (!surface_exists(gui_surf))
{
	gui_surf = surface_create(window_get_width(), window_get_height());
}

surface_set_target(gui_surf);
draw_clear_alpha(c_white, 0);
var tmp_x = round(large_bubble_x * window_get_width());
var tmp_y = round(large_bubble_y * window_get_height());
draw_sprite_stretched(spr_large_bubble, 0, tmp_x, tmp_y, 831 * scaling_factor, 78 * scaling_factor);
if (large_bubble_lines > 2)
{
	draw_sprite_stretched(spr_large_bubble, 1, tmp_x, tmp_y + 78 * scaling_factor, 831 * scaling_factor, 78 * scaling_factor * (large_bubble_lines - 2));
}
draw_sprite_stretched(spr_large_bubble, 2, tmp_x, tmp_y + 78 * scaling_factor * (large_bubble_lines - 1), 831 * scaling_factor, 78 * scaling_factor);
surface_reset_target();

draw_surface_part_ext(gui_surf, 0, 0, 1920, global.cutoff_y / 270 * 1080, 0, 0, scaling_factor, scaling_factor, c_white, 1);