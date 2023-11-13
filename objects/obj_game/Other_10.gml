/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2968FAA3
/// @DnDComment : Spawns a rock
/// @DnDArgument : "xpos" "-100"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "random_range(0,1000)"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_rock"
/// @DnDSaveInfo : "objectid" "obj_rock"
instance_create_layer(x + -100, y + random_range(0,1000), "Instances", obj_rock);