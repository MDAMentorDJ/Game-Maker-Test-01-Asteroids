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

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3C39E380
/// @DnDArgument : "var" "obj_game.gameState"
/// @DnDArgument : "value" "10"
if(obj_game.gameState == 10)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 67F6F609
	/// @DnDParent : 3C39E380
	/// @DnDArgument : "obj" "obj_player"
	/// @DnDSaveInfo : "obj" "obj_player"
	var l67F6F609_0 = false;
	l67F6F609_0 = instance_exists(obj_player);
	if(l67F6F609_0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 0E4A836E
		/// @DnDParent : 67F6F609
		/// @DnDArgument : "x" "obj_player.x"
		/// @DnDArgument : "y" "obj_player.y"
		direction = point_direction(x, y, obj_player.x, obj_player.y);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3BCD9FC7
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_ship"
if(sprite_index == spr_ship)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 22F08B2D
	/// @DnDParent : 3BCD9FC7
	/// @DnDArgument : "var" "obj_game.gameState"
	/// @DnDArgument : "value" "13"
	if(obj_game.gameState == 13)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 24437FEA
		/// @DnDParent : 22F08B2D
		/// @DnDArgument : "expr" "1 / room_speed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "shootTimer"
		shootTimer += 1 / room_speed;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 048F98E2
		/// @DnDParent : 22F08B2D
		/// @DnDArgument : "var" "shootTimer"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "2"
		if(shootTimer >= 2)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 34FD3A77
			/// @DnDParent : 048F98E2
			/// @DnDArgument : "var" "shootTimer"
			shootTimer = 0;
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 22AB2E3F
			/// @DnDParent : 048F98E2
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_bulletEnemy"
			/// @DnDSaveInfo : "objectid" "obj_bulletEnemy"
			instance_create_layer(x + 0, y + 0, "Instances", obj_bulletEnemy);
		}
	}
}