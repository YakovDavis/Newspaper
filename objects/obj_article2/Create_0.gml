ini_open("assets/ini/articles.ini");
title = ini_read_string("day" + string(global.day), "art2title", "");
title = string_replace_all(title, "\\", "\n");
text = ini_read_string("day" + string(global.day), "art2text", "");
text = string_replace_all(text, "\\", " ");
ini_close();