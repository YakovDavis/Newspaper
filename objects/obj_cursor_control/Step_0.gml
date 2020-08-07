if (global.inspection_mode == "dusting")
{
	instance_activate_object(obj_dusting_brush);
	dusting_brush.x = round(mouse_x);
	dusting_brush.y = round(mouse_y);
}

if (global.inspection_mode == "rusting")
{
	instance_activate_object(obj_rusting_brush);
	rusting_brush.x = round(mouse_x);
	rusting_brush.y = round(mouse_y);
}