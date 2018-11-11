x = clamp(x, minX, maxX);
y = clamp(y, minY, maxY);
WASD_Move(oCamera, camSpeed);
if (keyboard_check_pressed(vk_home) || keyboard_check_pressed(vk_space)) {
	x = oVillage.x;
	y = oVillage.y;
}