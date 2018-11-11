draw_set_color(c_white);
draw_set_halign(fa_right);
draw_text(100, 20, "Wood: ");
draw_text(100, 40, "Stone: ");

draw_set_halign(fa_left);
draw_text(100, 20, string(oWood.count));
draw_text(100, 40, string(oStone.count));

draw_set_alpha(0.5);
draw_set_color(c_black);
if(selectedSupply == oTree){
	draw_set_color(c_yellow);
}

draw_rectangle(icon_1_X1, icon_1_Y1, icon_1_X2, icon_1_Y2, false);
draw_set_alpha(1);
draw_sprite_ext(sTree,0,icon_1_X1+0.5*iconW, icon_1_Y1+0.5*iconH,3,3,0,c_white,1);

draw_set_alpha(0.5);
draw_set_color(c_black);
if(selectedSupply == oRock){
	draw_set_color(c_yellow);
}
draw_rectangle(icon_2_X1, icon_2_Y1, icon_2_X2, icon_2_Y2, false);
draw_set_alpha(1);
draw_sprite_ext(sRock,0,icon_2_X1+0.5*iconW, icon_2_Y1+0.5*iconH,3,3,0,c_white,1);