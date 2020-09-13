if (!surface_exists(gui_surf))
{
	gui_surf = surface_create(window_get_width(), window_get_height());
}

draw_set_font(font_gui);
draw_set_color(text_color);

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

draw_text_ext_transformed(tmp_x + 90 * scaling_factor, tmp_y + 30 * scaling_factor, large_bubble_text_draw, 60 * scaling_factor, 750 * scaling_factor, scaling_factor, scaling_factor, 0);

if (has_answers)
{
	tmp_x = round(answer_x * window_get_width() - 172 * answer_1_length * scaling_factor);
	tmp_y = round(answer_1_y * window_get_height());
	draw_sprite_stretched(spr_answer_bubble, 0 + answer_1_selected, tmp_x, tmp_y, 172 * scaling_factor, 84 * scaling_factor);
	if (answer_1_length > 2)
	{
		draw_sprite_stretched(spr_answer_bubble, 2 + answer_1_selected, tmp_x + 172 * scaling_factor, tmp_y, 172 * scaling_factor * (answer_1_length - 2), 84 * scaling_factor);
	}
	draw_sprite_stretched(spr_answer_bubble, 4 + answer_1_selected, tmp_x + 172 * scaling_factor * (answer_1_length - 1), tmp_y, 172 * scaling_factor, 84 * scaling_factor);
	
	draw_text_transformed(tmp_x + 30 * scaling_factor, tmp_y + 15 * scaling_factor, answer_1_text_draw, scaling_factor, scaling_factor, 0);
	
	tmp_x = round(answer_x * window_get_width() - 172 * answer_2_length * scaling_factor);
	tmp_y = round(answer_2_y * window_get_height());
	draw_sprite_stretched(spr_answer_bubble, 0 + answer_2_selected, tmp_x, tmp_y, 172 * scaling_factor, 84 * scaling_factor);
	if (answer_2_length > 2)
	{
		draw_sprite_stretched(spr_answer_bubble, 2 + answer_2_selected, tmp_x + 172 * scaling_factor, tmp_y, 172 * scaling_factor * (answer_2_length - 2), 84 * scaling_factor);
	}
	draw_sprite_stretched(spr_answer_bubble, 4 + answer_2_selected, tmp_x + 172 * scaling_factor * (answer_2_length - 1), tmp_y, 172 * scaling_factor, 84 * scaling_factor);
	
	draw_text_transformed(tmp_x + 30 * scaling_factor, tmp_y + 15 * scaling_factor, answer_2_text_draw, scaling_factor, scaling_factor, 0);
	
	tmp_x = round(answer_x * window_get_width() - 172 * answer_3_length * scaling_factor);
	tmp_y = round(answer_3_y * window_get_height());
	draw_sprite_stretched(spr_answer_bubble, 0 + answer_3_selected, tmp_x, tmp_y, 172 * scaling_factor, 84 * scaling_factor);
	if (answer_3_length > 2)
	{
		draw_sprite_stretched(spr_answer_bubble, 2 + answer_3_selected, tmp_x + 172 * scaling_factor, tmp_y, 172 * scaling_factor * (answer_3_length - 2), 84 * scaling_factor);
	}
	draw_sprite_stretched(spr_answer_bubble, 4 + answer_3_selected, tmp_x + 172 * scaling_factor * (answer_3_length - 1), tmp_y, 172 * scaling_factor, 84 * scaling_factor);
	
	draw_text_transformed(tmp_x + 30 * scaling_factor, tmp_y + 15 * scaling_factor, answer_3_text_draw, scaling_factor, scaling_factor, 0);
}

tmp_x = round(dots_x * window_get_width());
tmp_y = round(dots_y * window_get_height());
draw_sprite_stretched(spr_dots_bubble, 0, tmp_x, tmp_y, 477 * scaling_factor, 83 * scaling_factor);
for (var i = 0; i < 5 - countdown; i++)
{
	draw_sprite_stretched(spr_dot, 0, tmp_x + (50 + i * 75) * scaling_factor, tmp_y + 10, 64 * scaling_factor, 64 * scaling_factor);
}

surface_reset_target();

draw_surface_part_ext(gui_surf, 0, fly_away_offset * window_get_height(), 1920, global.cutoff_y / 270 * 1080, 0, 0, scaling_factor, scaling_factor, c_white, 1);