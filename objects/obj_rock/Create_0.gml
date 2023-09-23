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