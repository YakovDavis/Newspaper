if ((global.inspection_mode == "metal")and(!global.drop_present))
{
	global.drop_present = true;
	
	r_x = round(mouse_x - x);
	r_y = round(mouse_y - y);
	
	R = buffer_peek(metal_buffer, (r_x + 128 * r_y) * 4, buffer_u8);
	G = buffer_peek(metal_buffer, (r_x + 128 * r_y) * 4 + 1, buffer_u8);
	B = buffer_peek(metal_buffer, (r_x + 128 * r_y) * 4 + 2, buffer_u8);
	
	global.drop_color = make_color_rgb(R, G, B);
	
	instance_create_depth(round(mouse_x), round(mouse_y), -1, obj_liquid_drop);
}