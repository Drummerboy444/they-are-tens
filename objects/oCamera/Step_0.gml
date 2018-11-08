x = clamp(x, minX, maxX);
y = clamp(y, minY, maxY);
WASD_Move(oCamera, camSpeed);
if (keyboard_check_pressed(vk_home)) {
	x = oVillage.x;
	y = oVillage.y;
}