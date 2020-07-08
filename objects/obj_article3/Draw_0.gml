if (highlighted)
{
	draw_sprite(spr_art3_hl, -1, x, y);
}
draw_set_font(font_papertext)
draw_set_colour(subtitleColor);
draw_text(x + 2, y + 3, title);
draw_set_colour(textColor);
draw_set_font(font_unreadable)
draw_text_ext(x + 42, y + 13, text, 5, width - 40);
draw_sprite(spr_art3_attached, global.day - 1, x + 2, y + 13);
if ((focused)and(global.gamestate == "newspaper")and(!highlighted))
{
	draw_sprite(spr_art3_hb, -1, x, y);
}