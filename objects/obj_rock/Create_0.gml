/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 37F547AA
/// @DnDArgument : "var" "shootTimer"
shootTimer = 0;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 75B923B0
/// @DnDComment : Set the speed to a random amount from .5 to maxSpeed
/// @DnDArgument : "var" "speed"
/// @DnDArgument : "min" ".5"
/// @DnDArgument : "max" "rockMaxSpeed"
speed = (random_range(.5, rockMaxSpeed));

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
/// @DnDArgument : "var" "obj_game.gameState"
/// @DnDArgument : "value" "6"
if(obj_game.gameState == 6)
{
	/// @DnDAction : YoYo Games.Movement.Add_Motion
	/// @DnDVersion : 1
	/// @DnDHash : 3FCEEC04
	/// @DnDParent : 1BC55393
	/// @DnDArgument : "dir" "180"
	/// @DnDArgument : "speed" "3"
	motion_add(180, 3);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 39712F6A
/// @DnDArgument : "var" "obj_game.gameState"
/// @DnDArgument : "value" "7"
if(obj_game.gameState == 7)
{
	/// @DnDAction : YoYo Games.Movement.Add_Motion
	/// @DnDVersion : 1
	/// @DnDHash : 4CD4C1A9
	/// @DnDParent : 39712F6A
	/// @DnDArgument : "dir" "180"
	/// @DnDArgument : "speed" "3"
	motion_add(180, 3);
}