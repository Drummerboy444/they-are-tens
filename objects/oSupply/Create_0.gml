resource = noone;
maxResourceCount = 0;
resourceCount = 0;
image_speed = 0;

spriteList = oGameController.sprites[? object_index];
var rnd = GetRandomInt(0, array_length_1d(spriteList)-1);
sprite_index = spriteList[rnd];

event_inherited();