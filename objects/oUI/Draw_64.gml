draw_set_halign(fa_right);
draw_text(100, 20, "Wood: ");
draw_text(100, 40, "Stone: ");

draw_set_halign(fa_left);
draw_text(100, 20, string(oWood.count));
draw_text(100, 40, string(oStone.count));