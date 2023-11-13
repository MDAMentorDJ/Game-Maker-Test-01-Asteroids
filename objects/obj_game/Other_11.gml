/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7D54F8BA
/// @DnDComment : Resets the players position$(13_10)$(13_10)Store a local copy of the current coordinates
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "resetPosition"
resetPosition = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 00CE3888
/// @DnDInput : 5
/// @DnDArgument : "expr" "obj_player.x"
/// @DnDArgument : "expr_1" "obj_player.y"
/// @DnDArgument : "expr_2" "obj_player.image_angle"
/// @DnDArgument : "var" "obj_player.resetX"
/// @DnDArgument : "var_1" "obj_player.resetY"
/// @DnDArgument : "var_2" "obj_player.resetA"
/// @DnDArgument : "var_3" "obj_player.resetT"
/// @DnDArgument : "var_4" "obj_player.speed"
obj_player.resetX = obj_player.x;
obj_player.resetY = obj_player.y;
obj_player.resetA = obj_player.image_angle;
obj_player.resetT = 0;
obj_player.speed = 0;