/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 279A3A9A
/// @DnDComment : Wrap the rock around the room
/// @DnDArgument : "margin" "100"
move_wrap(1, 1, 100);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5924C1AB
/// @DnDComment : Objects moving faster spin faster
/// @DnDArgument : "expr" "speed"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "image_angle"
image_angle += speed;