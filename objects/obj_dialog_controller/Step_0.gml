if (global.dialog_state == "inactive")
{
	if (global.dialog_part != "end")
	{
		if (!instance_exists(obj_gui_dialog))
		{
			instance_create_depth(0, 0, -10, obj_gui_dialog);
		}
	}	
}