scaling_factor = 1; //window_get_height() / 1080;

gui_surf = surface_create(1920, 1080);
surface_set_target(gui_surf);
draw_clear_alpha(c_white, 0);
surface_reset_target();

var f = file_text_open_read("assets/json/" + global.dialog_file + ".json");
var s = "";
while (!file_text_eof(f))
{
	s += file_text_read_string(f);
	file_text_readln(f);
}
file_text_close(f);
current_dialog_map = ds_map_find_value(json_decode(s), global.dialog_part);

large_bubble_text = ds_map_find_value(current_dialog_map, "text");
if (string_length(large_bubble_text) / 2 > 2)
{
	large_bubble_lines = ceil(string_length(large_bubble_text) / 25);
}
has_answers = (ds_map_find_value(current_dialog_map, "has_answers") == "true");

if (has_answers)
{
	var answers_map = ds_map_find_value(current_dialog_map, "answers");
	answer_1_text = ds_map_find_value(ds_map_find_value(answers_map, "positive"), "text");
	if (string_length(answer_1_text) / 5 > 2)
	{
		answer_1_length = ceil(string_length(answer_1_text) / 5);
	}
	answer_2_text = ds_map_find_value(ds_map_find_value(answers_map, "negative"), "text");
	if (string_length(answer_2_text) / 5 > 2)
	{
		answer_2_length = ceil(string_length(answer_2_text) / 5);
	}
	answer_3_text = ds_map_find_value(ds_map_find_value(answers_map, "neutral"), "text");
	if (string_length(answer_3_text) / 5 > 2)
	{
		answer_3_length = ceil(string_length(answer_3_text) / 5);
	}
}

answer_1_highpoint += (large_bubble_lines - 2) * 0.08;
answer_2_highpoint += (large_bubble_lines - 2) * 0.08;
answer_3_highpoint += (large_bubble_lines - 2) * 0.08;

animation_status = "lb_bubble";
increase = 0.5;
hold = 0;
current_text_characters = 0;
current_text_length = string_length(large_bubble_text);

nothing_selected = true;