draw_set_color(c_white);
draw_set_halign(fa_right);
draw_text(100, 20, "Wood: ");
draw_text(100, 40, "Stone: ");

draw_set_halign(fa_left);
draw_text(100, 20, string(oWood.count));
draw_text(100, 40, string(oStone.count));

DrawUIButton(0,iconSize,iconGap,sTree,false);

DrawUIButton(1,iconSize,iconGap,sRock,false);

DrawUIButton(2,iconSize,iconGap,sLumberMill,oLumberMill==selectedBuilding);

DrawUIButton(3,iconSize,iconGap,sQuarry,oQuarry==selectedBuilding);