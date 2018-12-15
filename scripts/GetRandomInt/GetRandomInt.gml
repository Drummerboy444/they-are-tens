/// @description GetRandomInt(min,max) Gets a random integer in range inclusively defined by parameters
/// @arg min minimum integer
/// @arg max maximum integer
var minInt = argument[0];
var maxInt = argument[1];

var rnd = random_range(minInt, maxInt+1);
return floor(rnd);