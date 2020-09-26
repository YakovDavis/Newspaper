/// @description: Modify this for different artifacts

var f = file_text_open_read("assets/json/artefacts.json");
var s = "";
while (!file_text_eof(f))
{
	s += file_text_read_string(f);
	file_text_readln(f);
}
file_text_close(f);
var artefact_map = ds_map_find_value(json_decode(s), global.current_artefact);
res_id = ds_map_find_value(artefact_map, "resource_id");
ds_map_destroy(artefact_map);

lowres_sprite = spr_artefact_lowres;
hires_sprite = spr_artefact_hires;

dust_surf = surface_create(128, 128);
surface_set_target(dust_surf);
draw_clear_alpha(c_white, 1);
surface_reset_target();
dust_sprite = sprite_duplicate(spr_artefact_lowres_dust);

dust_hires_surf = surface_create(512, 512);
surface_set_target(dust_hires_surf);
draw_clear_alpha(c_white, 1);
surface_reset_target();
dust_hires_sprite = sprite_duplicate(spr_artefact_hires_dust);

rust_surf = surface_create(128, 128);
surface_set_target(rust_surf);
draw_clear_alpha(c_white, 1);
surface_reset_target();
rust_sprite = sprite_duplicate(spr_artefact_lowres_rust);

rust_hires_surf = surface_create(512, 512);
surface_set_target(rust_hires_surf);
draw_clear_alpha(c_white, 1);
surface_reset_target();
rust_hires_sprite = sprite_duplicate(spr_artefact_hires_rust);

var metal_surf = surface_create(128, 128);
surface_set_target(metal_surf);
draw_sprite(spr_artefact_metalmap, -1, 0, 0);
surface_reset_target();
metal_buffer = buffer_create(128*128*4, buffer_fixed, 1);
buffer_get_surface(metal_buffer, metal_surf, 0, 0, 0);
surface_free(metal_surf);

global.drop_color = c_white;
global.drop_present = false;