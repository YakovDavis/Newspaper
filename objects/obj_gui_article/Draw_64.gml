draw_set_font(font_gui);
draw_sprite_ext(spr_detailed_text, -1, background_x, 0, background_scale, background_scale, 0, c_white, 1);
draw_set_color(title_color);
draw_text_transformed(background_x + 15, 10, title_draw, background_scale, background_scale, 0);
draw_set_color(text_color);
draw_text_transformed(background_x + 15, 10 + string_height(title) * background_scale, text_draw, background_scale, background_scale, 0);
if (on_link)
{
	draw_rectangle(link_upper_x / 480 * window_get_width(), link_lower_y / 270 * window_get_height(), link_lower_x / 480 * window_get_width(), link_lower_y / 270 * window_get_height() - 5, false);
}