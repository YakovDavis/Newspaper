if ((global.gamestate == "newspaper")and(!highlighted))
{
	global.focus = 2;
	instance_create_depth(0, 0, -1, obj_gui_article);
	global.gamestate = "article";
}