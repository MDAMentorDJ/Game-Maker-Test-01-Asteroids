/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 10B8D60C
move_wrap(1, 1, 0);

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 0B703E52
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l0B703E52_0 = false;
l0B703E52_0 = instance_exists(obj_player);
if(l0B703E52_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 215AF2CA
	/// @DnDParent : 0B703E52
	/// @DnDArgument : "expr" "point_direction(x,y,obj_player.x,obj_player.y)"
	/// @DnDArgument : "var" "image_angle"
	image_angle = point_direction(x,y,obj_player.x,obj_player.y);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3D79E4FA
/// @DnDArgument : "var" "obj_game.resetPosition"
/// @DnDArgument : "value" "1"
if(obj_game.resetPosition == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2CB47733
	/// @DnDParent : 3D79E4FA
	/// @DnDArgument : "expr" "1 / (room_speed)"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "enemyTimer"
	enemyTimer += 1 / (room_speed);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B306BFA
	/// @DnDParent : 3D79E4FA
	/// @DnDArgument : "expr" "lerp(1100, 800, enemyTimer)"
	/// @DnDArgument : "var" "x"
	x = lerp(1100, 800, enemyTimer);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1A93CCA5
/// @DnDArgument : "var" "obj_game.gameState"
/// @DnDArgument : "value" "16"
if(obj_game.gameState == 16)
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 05E44647
	/// @DnDInput : 2
	/// @DnDParent : 1A93CCA5
	/// @DnDArgument : "var" "closestBullet"
	/// @DnDArgument : "value" "noone"
	/// @DnDArgument : "var_1" "closestDistance"
	/// @DnDArgument : "value_1" "99999999"
	var closestBullet = noone;
	var closestDistance = 99999999;

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 1CF1D646
	/// @DnDParent : 1A93CCA5
	/// @DnDArgument : "obj" "obj_bullet"
	/// @DnDSaveInfo : "obj" "obj_bullet"
	var l1CF1D646_0 = false;
	l1CF1D646_0 = instance_exists(obj_bullet);
	if(l1CF1D646_0)
	{
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 7AA69D07
		/// @DnDApplyTo : {obj_bullet}
		/// @DnDParent : 1CF1D646
		with(obj_bullet) {
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 35C8443F
			/// @DnDParent : 7AA69D07
			/// @DnDArgument : "var" "tempDistance"
			/// @DnDArgument : "value" "point_distance(x,y, other.x, other.y)"
			var tempDistance = point_distance(x,y, other.x, other.y);
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4B144082
			/// @DnDParent : 7AA69D07
			/// @DnDArgument : "var" "tempDistance"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "closestDistance"
			if(tempDistance < closestDistance)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4E4ADC72
				/// @DnDInput : 2
				/// @DnDParent : 4B144082
				/// @DnDArgument : "expr" "id"
				/// @DnDArgument : "expr_1" "tempDistance"
				/// @DnDArgument : "var" "closestBullet"
				/// @DnDArgument : "var_1" "closestDistance"
				closestBullet = id;
				closestDistance = tempDistance;
			}
		}
	}

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 6683C2CC
	/// @DnDParent : 1A93CCA5
	/// @DnDArgument : "obj" "closestBullet"
	var l6683C2CC_0 = false;
	l6683C2CC_0 = instance_exists(closestBullet);
	if(l6683C2CC_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 64519F0F
		/// @DnDParent : 6683C2CC
		/// @DnDArgument : "var" "point_distance(x,y, closestBullet.x, closestBullet.y)"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "100"
		if(point_distance(x,y, closestBullet.x, closestBullet.y) < 100)
		{
			/// @DnDAction : YoYo Games.Movement.Add_Motion
			/// @DnDVersion : 1
			/// @DnDHash : 03E62E84
			/// @DnDParent : 64519F0F
			/// @DnDArgument : "dir" "point_direction(x, y, closestBullet.x, closestBullet.y) + 180"
			/// @DnDArgument : "speed" ".05"
			motion_add(point_direction(x, y, closestBullet.x, closestBullet.y) + 180, .05);
		}
	}
}