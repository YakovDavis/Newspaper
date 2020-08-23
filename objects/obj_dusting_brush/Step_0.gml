if (global.inspection_mode != mode_name)
{
	instance_deactivate_object(obj_dusting_brush);
}

animated = mouse_check_button(mb_left);

if (mouse_check_button_pressed(mb_left))
{
	alarm[0] = 10;
}