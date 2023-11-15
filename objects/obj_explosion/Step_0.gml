/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
/// @DnDVersion : 1
/// @DnDHash : 58702392
/// @DnDArgument : "alpha" "-2/room_speed"
/// @DnDArgument : "alpha_relative" "1"
image_alpha += -2/room_speed;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7F40E9EC
/// @DnDArgument : "expr" "-1/room_speed"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "timer"
timer += -1/room_speed;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3ED28274
/// @DnDArgument : "var" "timer"
/// @DnDArgument : "op" "3"
if(timer <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5C4346DE
	/// @DnDParent : 3ED28274
	instance_destroy();
}