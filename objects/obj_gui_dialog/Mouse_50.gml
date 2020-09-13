if (answer_1_selected)
{
	animation_status = "fly_away";
	global.dialog_part = ds_map_find_value(ds_map_find_value(ds_map_find_value(current_dialog_map, "answers"), "positive"), "go_to");
	nothing_selected = false;
}

if (answer_2_selected)
{
	animation_status = "fly_away";
	global.dialog_part = ds_map_find_value(ds_map_find_value(ds_map_find_value(current_dialog_map, "answers"), "negative"), "go_to");
	nothing_selected = false;
}

if (answer_3_selected)
{
	animation_status = "fly_away";
	global.dialog_part = ds_map_find_value(ds_map_find_value(ds_map_find_value(current_dialog_map, "answers"), "neutral"), "go_to");
	nothing_selected = false;
}