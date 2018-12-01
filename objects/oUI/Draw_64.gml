draw_set_color(c_white);
draw_set_halign(fa_right);
draw_text(100, 20, "Wood: ");
draw_text(100, 40, "Stone: ");
draw_text(100, 60, "Food: ");

draw_set_halign(fa_left);
draw_text(100, 20, string(oWood.count));
draw_text(100, 40, string(oStone.count));
draw_text(100, 60, string(oBerry.count));

if(oSelect.selectedObj == noone){
	var buttonList = ds_map_find_value(oGameController.buttonLists, "default");
}
else{
	var buttonList = ds_map_find_value(oGameController.buttonLists, oSelect.selectedObj);
}

for(i=0; i<array_length_1d(buttonList); i++){
	var button = ds_map_find_value(oGameController.buttons,buttonList[i]);
	DrawUIButton(i,iconSize,iconGap,button[0],i==selectedUILocation);
}