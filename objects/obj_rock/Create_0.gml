/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 37F547AA
/// @DnDArgument : "var" "shootTimer"
shootTimer = 0;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 119A1D22
/// @DnDArgument : "var" "tempDiff"
/// @DnDArgument : "value" "0"
var tempDiff = 0;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5B5B52BA
/// @DnDArgument : "var" "obj_game.gameState"
/// @DnDArgument : "value" "6"
if(obj_game.gameState == 6)
{
	/// @DnDAction : YoYo Games.Movement.Add_Motion
	/// @DnDVersion : 1
	/// @DnDHash : 299ECDE4
	/// @DnDParent : 5B5B52BA
	/// @DnDArgument : "dir" "tempDiff"
	/// @DnDArgument : "speed" "2"
	motion_add(tempDiff, 2);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3CEC9EDB
/// @DnDArgument : "var" "obj_game.gameState"
/// @DnDArgument : "value" "7"
if(obj_game.gameState == 7)
{
	/// @DnDAction : YoYo Games.Movement.Add_Motion
	/// @DnDVersion : 1
	/// @DnDHash : 73874CDF
	/// @DnDParent : 3CEC9EDB
	/// @DnDArgument : "dir" "tempDiff"
	/// @DnDArgument : "speed" "2"
	motion_add(tempDiff, 2);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 002F1A7E
/// @DnDArgument : "var" "obj_game.gameState"
/// @DnDArgument : "value" "19"
if(obj_game.gameState == 19)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E70CC21
	/// @DnDParent : 002F1A7E
	/// @DnDArgument : "expr" "floor(obj_game.rockCount / 10)"
	/// @DnDArgument : "var" "tempDiff"
	tempDiff = floor(obj_game.rockCount / 10);
}

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 75B923B0
/// @DnDComment : Set the speed to a random amount from .5 to maxSpeed
/// @DnDArgument : "var" "speed"
/// @DnDArgument : "min" ".5 + tempDiff/2"
/// @DnDArgument : "max" "rockMaxSpeed + tempDiff"
speed = (random_range(.5 + tempDiff/2, rockMaxSpeed + tempDiff));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 481CB399
/// @DnDComment : Set the directions / angle of the rock to a random amount
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "max" "360"
direction = (random_range(0, 360));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 2A92E198
/// @DnDArgument : "var" "image_angle"
/// @DnDArgument : "max" "360"
image_angle = (random_range(0, 360));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1BC55393
/// @DnDDisabled : 1
/// @DnDArgument : "var" "obj_game.gameState"
/// @DnDArgument : "value" "6"
/// @DnDAction : YoYo Games.Movement.Add_Motion
/// @DnDVersion : 1
/// @DnDHash : 3FCEEC04
/// @DnDDisabled : 1
/// @DnDParent : 1BC55393
/// @DnDArgument : "dir" "180"
/// @DnDArgument : "speed" "3"

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 39712F6A
/// @DnDDisabled : 1
/// @DnDArgument : "var" "obj_game.gameState"
/// @DnDArgument : "value" "7"
/// @DnDAction : YoYo Games.Movement.Add_Motion
/// @DnDVersion : 1
/// @DnDHash : 4CD4C1A9
/// @DnDDisabled : 1
/// @DnDParent : 39712F6A
/// @DnDArgument : "dir" "180"
/// @DnDArgument : "speed" "3"

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 71CFD027
/// @DnDArgument : "var" "obj_game.gameState"
/// @DnDArgument : "value" "10"
if(obj_game.gameState == 10)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6295EE70
	/// @DnDParent : 71CFD027
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spr_rock_big"
	if(sprite_index == spr_rock_big)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 5549A310
		/// @DnDParent : 6295EE70
		/// @DnDArgument : "spriteind" "spr_mary_enemy"
		/// @DnDSaveInfo : "spriteind" "spr_mary_enemy"
		sprite_index = spr_mary_enemy;
		image_index = 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 545DF9C9
	/// @DnDParent : 71CFD027
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spr_rock_small"
	if(sprite_index == spr_rock_small)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 03BE0D62
		/// @DnDParent : 545DF9C9
		/// @DnDArgument : "spriteind" "spr_mary_alien"
		/// @DnDSaveInfo : "spriteind" "spr_mary_alien"
		sprite_index = spr_mary_alien;
		image_index = 0;
	}
}