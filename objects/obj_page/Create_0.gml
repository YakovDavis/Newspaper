if (x + 10 > room_width / 2)
{
	pageNumber = 1;
	instance_create_depth(x + 83, y + 16, -1, obj_article1);
	instance_create_depth(x + 8, y + 43, -1, obj_article2);
	instance_create_depth(x + 8, y + 123, -1, obj_article3);
}

ini_open("assets/ini/articles.ini");
dateNP = ini_read_string("day" + string(global.day), "date", "");
ini_close();

global.gamestate = "newspaper";
global.focus = 1;