ini_open("assets/ini/articles.ini");
title = ini_read_string("day" + string(global.day), "art" + string(global.focus) + "title", "");
text = ini_read_string("day" + string(global.day), "art" + string(global.focus) + "text", "");
link_upper_x = ini_read_real("day" + string(global.day), "art" + string(global.focus) + "link_upper_x", 0);
link_upper_y = ini_read_real("day" + string(global.day), "art" + string(global.focus) + "link_upper_y", 0);
link_lower_x = ini_read_real("day" + string(global.day), "art" + string(global.focus) + "link_lower_x", 0);
link_lower_y = ini_read_real("day" + string(global.day), "art" + string(global.focus) + "link_lower_y", 0);
ini_close();

title_draw = "";
text_draw = "";
increase = 0.5;
title_characters = 0;
text_characters = 0;
hold = 0;

title_length = string_length(title);
text_length = string_length(text);

finished = false;

background_scale = window_get_height() / 1080;
background_x = (window_get_width() - window_get_height()) / 2;

exit_btn_inst = instance_create_depth(410, 10, -10, obj_art_exit);

global.gamestate = "article"