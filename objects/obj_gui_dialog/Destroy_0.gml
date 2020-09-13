surface_free(gui_surf);
if (nothing_selected)
{
	global.dialog_part = ds_map_find_value(current_dialog_map, "go_to");
}
ds_map_destroy(current_dialog_map);
global.dialog_state = "inactive";