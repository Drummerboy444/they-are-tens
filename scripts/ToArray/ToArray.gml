/// @description ToArray(target) Utility function to convert any variable into an array. If the
///                                      variable is already an array then we return that, otherwise we
///                                      return an array contain just the target variable.
/// @arg Target to check and/or convert
var target = argument[0];

return is_array(target) ? target : [target];