/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2E7919E7
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_game.rockCount"
obj_game.rockCount += 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 64A28075
/// @DnDArgument : "var" "obj_game.rockCount"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "obj_game.rockTarget"
if(obj_game.rockCount >= obj_game.rockTarget)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 290845E8
	/// @DnDParent : 64A28075
	instance_destroy();
}