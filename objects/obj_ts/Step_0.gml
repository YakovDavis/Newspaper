if (mouse_on)
{
	r_x = round(mouse_x - x);
	r_y = round(mouse_y - y);
	
	R = buffer_peek(metal_buffer, (r_x + 128 * r_y) * 4, buffer_u8);
	G = buffer_peek(metal_buffer, (r_x + 128 * r_y) * 4 + 1, buffer_u8);
	B = buffer_peek(metal_buffer, (r_x + 128 * r_y) * 4 + 2, buffer_u8);
	
	metal_color = make_color_rgb(R, G, B);
}