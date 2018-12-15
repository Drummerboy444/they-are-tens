resource = noone;
maxResourceCount = 0;
resourceCount = 0;
image_speed = 0;

with(oGameController){
	other.spriteList = ds_map_find_value(sprites,other.object_index);
}
var rnd = GetRandomInt(0, array_length_1d(spriteList)-1);
sprite_index = spriteList[rnd];

event_inherited();