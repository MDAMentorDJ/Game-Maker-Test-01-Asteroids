/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5D87BCEA
/// @DnDComment : Set the speed and the direction of the bullet
/// @DnDInput : 2
/// @DnDArgument : "expr" "bulletSpeed"
/// @DnDArgument : "expr_1" "obj_player.image_angle"
/// @DnDArgument : "var" "speed"
/// @DnDArgument : "var_1" "direction"
speed = bulletSpeed;
direction = obj_player.image_angle;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 45FF9CE6
/// @DnDArgument : "var" "obj_game.gameState"
/// @DnDArgument : "value" "7"
if(obj_game.gameState == 7)
{
	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6EC34989
	/// @DnDParent : 45FF9CE6
	/// @DnDArgument : "colour" "$FF2EFFFF"
	image_blend = $FF2EFFFF & $ffffff;
	image_alpha = ($FF2EFFFF >> 24) / $ff;
}