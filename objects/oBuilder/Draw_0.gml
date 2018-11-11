if(building != noone){
	var sprite = ds_map_find_value(oGameController.sprites,building);
	var closestGridPoint = GetNearestGridPoint([mouse_x,mouse_y]);
	gridX = closestGridPoint[0];
	gridY = closestGridPoint[1];
	draw_sprite(sprite,0,gridX,gridY);
}