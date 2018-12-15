if(building != noone){
	var sprite = ds_map_find_value(oGameController.sprites,building);
	var location = GetBuildingLocation(sprite, [mouse_x, mouse_y]);
	gridX = location[0];
	gridY = location[1];
	draw_set_alpha(0.5);
	draw_sprite(sprite,0,gridX,gridY);
}