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

tmp_x = round(answer_x * window_get_width());
tmp_y = round(answer_1_y * window_get_height());
draw_sprite_stretched(spr_answer_bubble, 0 + answer_1_selected, tmp_x, tmp_y, 172 * scaling_factor, 84 * scaling_factor);
if (answer_1_length > 2)
{
	draw_sprite_stretched(spr_answer_bubble, 2 + answer_1_selected, tmp_x + 172 * scaling_factor, tmp_y, 172 * scaling_factor * (answer_1_length - 2), 84 * scaling_factor);
}
draw_sprite_stretched(spr_answer_bubble, 4 + answer_1_selected, tmp_x + 172 * scaling_factor * (answer_1_length - 1), tmp_y, 172 * scaling_factor, 84 * scaling_factor);

tmp_y = round(answer_2_y * window_get_height());
draw_sprite_stretched(spr_answer_bubble, 0 + answer_2_selected, tmp_x, tmp_y, 172 * scaling_factor, 84 * scaling_factor);
if (answer_2_length > 2)
{
	draw_sprite_stretched(spr_answer_bubble, 2 + answer_2_selected, tmp_x + 172 * scaling_factor, tmp_y, 172 * scaling_factor * (answer_2_length - 2), 84 * scaling_factor);
}
draw_sprite_stretched(spr_answer_bubble, 4 + answer_2_selected, tmp_x + 172 * scaling_factor * (answer_2_length - 1), tmp_y, 172 * scaling_factor, 84 * scaling_factor);

tmp_y = round(answer_3_y * window_get_height());
draw_sprite_stretched(spr_answer_bubble, 0 + answer_3_selected, tmp_x, tmp_y, 172 * scaling_factor, 84 * scaling_factor);
if (answer_3_length > 2)
{
	draw_sprite_stretched(spr_answer_bubble, 2 + answer_3_selected, tmp_x + 172 * scaling_factor, tmp_y, 172 * scaling_factor * (answer_3_length - 2), 84 * scaling_factor);
}
draw_sprite_stretched(spr_answer_bubble, 4 + answer_3_selected, tmp_x + 172 * scaling_factor * (answer_3_length - 1), tmp_y, 172 * scaling_factor, 84 * scaling_factor);
surface_reset_target();

draw_surface_part_ext(gui_surf, 0, 0, 1920, global.cutoff_y / 270 * 1080, 0, 0, scaling_factor, scaling_factor, c_white, 1);