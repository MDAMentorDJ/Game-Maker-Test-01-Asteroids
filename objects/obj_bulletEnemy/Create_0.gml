/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 43D5226D
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l43D5226D_0 = false;
l43D5226D_0 = instance_exists(obj_player);
if(l43D5226D_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 3C0B16E9
	/// @DnDParent : 43D5226D
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 73B73068
	/// @DnDParent : 43D5226D
	/// @DnDArgument : "expr" "enemyBulletSpeed"
	/// @DnDArgument : "var" "speed"
	speed = enemyBulletSpeed;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 60592A8C
else
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 136D25FA
	/// @DnDParent : 60592A8C
	instance_destroy();
}

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 6EC8B1DF
/// @DnDArgument : "colour" "$FF3232FF"
image_blend = $FF3232FF & $ffffff;
image_alpha = ($FF3232FF >> 24) / $ff;