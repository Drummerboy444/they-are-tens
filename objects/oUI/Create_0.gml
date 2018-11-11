viewW = display_get_gui_width();
viewH = display_get_gui_height();
iconW = 64;
iconH = 64;
iconGap = 20;

selectedSupply = oRock;

icon_1_X1 = iconGap;
icon_1_Y1 = viewH-iconGap-iconH;
icon_1_X2 = iconGap+iconW;
icon_1_Y2 = viewH-iconGap;

icon_2_X1 = 2*iconGap+iconW;
icon_2_Y1 = viewH-iconGap-iconH;
icon_2_X2 = 2*iconGap+2*iconW;
icon_2_Y2 = viewH-iconGap;