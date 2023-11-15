/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6AF4BD5B
/// @DnDArgument : "var" "obj_game.gameState"
/// @DnDArgument : "value" "8"
if(obj_game.gameState == 8)
{
	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 3FC4F00A
	/// @DnDParent : 6AF4BD5B
	image_blend = $FFFFFFFF & $ffffff;
	image_alpha = ($FFFFFFFF >> 24) / $ff;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 548CF1E3
/// @DnDArgument : "var" "obj_game.gameState"
/// @DnDArgument : "value" "7"
if(obj_game.gameState == 7)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 47DD1B43
	/// @DnDParent : 548CF1E3
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "500"
	if(x >= 500)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4B6DE49F
		/// @DnDParent : 47DD1B43
		/// @DnDArgument : "var" "speed"
		speed = 0;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 77BDD9AA
/// @DnDArgument : "var" "obj_game.playerInControl"
/// @DnDArgument : "value" "1"
if(obj_game.playerInControl == 1)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 07591FED
	/// @DnDParent : 77BDD9AA
	/// @DnDArgument : "var" "can_use_bomb"
	/// @DnDArgument : "value" "1"
	if(can_use_bomb == 1)
	{
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
		/// @DnDVersion : 1.1
		/// @DnDHash : 1E3A9703
		/// @DnDParent : 07591FED
		/// @DnDArgument : "button" "mb_right"
		var l1E3A9703_0;
		l1E3A9703_0 = mouse_check_button_pressed(mb_right);
		if (l1E3A9703_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5F2AFAD8
			/// @DnDParent : 1E3A9703
			/// @DnDArgument : "var" "can_use_bomb"
			can_use_bomb = 0;
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 190FCE17
			/// @DnDParent : 1E3A9703
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_bomb"
			instance_create_layer(x + 0, y + 0, "Instances", obj_bomb);
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 6EB81FAB
			/// @DnDParent : 1E3A9703
			/// @DnDArgument : "steps" "60"
			/// @DnDArgument : "alarm" "1"
			alarm_set(1, 60);
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 48DE9335
	/// @DnDComment : If we're on Melanie's Level$(13_10)Then move with the mouse
	/// @DnDParent : 77BDD9AA
	/// @DnDArgument : "var" "obj_game.gameState"
	/// @DnDArgument : "value" "4"
	if(obj_game.gameState == 4)
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 7A95B7A6
		/// @DnDComment : Move the player$(13_10)
		/// @DnDParent : 48DE9335
		/// @DnDArgument : "function" "MovePlayerWithMouse"
		MovePlayerWithMouse();
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2F7600BC
	/// @DnDComment : If we're on Melanie's Level$(13_10)Then move with the mouse
	/// @DnDParent : 77BDD9AA
	/// @DnDArgument : "var" "obj_game.gameState"
	/// @DnDArgument : "value" "19"
	if(obj_game.gameState == 19)
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 6637213B
		/// @DnDComment : Move the player$(13_10)
		/// @DnDParent : 2F7600BC
		/// @DnDArgument : "function" "MovePlayerWithMouse"
		MovePlayerWithMouse();
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
		/// @DnDVersion : 1.1
		/// @DnDHash : 65D26750
		/// @DnDParent : 2F7600BC
		var l65D26750_0;
		l65D26750_0 = mouse_check_button_pressed(mb_left);
		if (l65D26750_0)
		{
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 69341B81
			/// @DnDComment : Pew pew pew
			/// @DnDParent : 65D26750
			/// @DnDArgument : "function" "FireWeapons"
			FireWeapons();
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 02671BD0
	/// @DnDParent : 77BDD9AA
	else
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 3DEEB781
		/// @DnDComment : Move the player$(13_10)
		/// @DnDParent : 02671BD0
		/// @DnDArgument : "function" "MovePlayer"
		MovePlayer();
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0102F707
		/// @DnDParent : 02671BD0
		/// @DnDArgument : "var" "obj_game.gameState"
		/// @DnDArgument : "value" "7"
		if(obj_game.gameState == 7)
		{
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 507648CD
			/// @DnDParent : 0102F707
			/// @DnDArgument : "var" "weaponsHot"
			/// @DnDArgument : "value" "0"
			var weaponsHot = 0;
		
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
			/// @DnDVersion : 1.1
			/// @DnDHash : 63A87112
			/// @DnDParent : 0102F707
			var l63A87112_0;
			l63A87112_0 = mouse_check_button(mb_left);
			if (l63A87112_0)
			{
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 19C28895
				/// @DnDComment : Pew pew pew
				/// @DnDParent : 63A87112
				/// @DnDArgument : "function" "FireWeapons"
				FireWeapons();
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 46C0FF98
				/// @DnDParent : 63A87112
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "var" "weaponsHot"
				weaponsHot = 1;
			}
		
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 64A624D7
			/// @DnDParent : 0102F707
			var l64A624D7_0;
			l64A624D7_0 = keyboard_check(vk_space);
			if (l64A624D7_0)
			{
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 0ED0C2C3
				/// @DnDComment : Pew pew pew
				/// @DnDParent : 64A624D7
				/// @DnDArgument : "function" "FireWeapons"
				FireWeapons();
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 38B74A3D
				/// @DnDParent : 64A624D7
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "var" "weaponsHot"
				weaponsHot = 1;
			}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5844EA2A
			/// @DnDParent : 0102F707
			/// @DnDArgument : "var" "weaponsHot"
			/// @DnDArgument : "value" "1"
			if(weaponsHot == 1)
			{
				/// @DnDAction : YoYo Games.Instances.Color_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 3CF1544E
				/// @DnDParent : 5844EA2A
				/// @DnDArgument : "colour" "$FF0066FF"
				image_blend = $FF0066FF & $ffffff;
				image_alpha = ($FF0066FF >> 24) / $ff;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 03C5214D
			/// @DnDParent : 0102F707
			else
			{
				/// @DnDAction : YoYo Games.Instances.Color_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 27C8B4DB
				/// @DnDParent : 03C5214D
				image_blend = $FFFFFFFF & $ffffff;
				image_alpha = ($FFFFFFFF >> 24) / $ff;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 2F4B09E2
		/// @DnDParent : 02671BD0
		else
		{
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
			/// @DnDVersion : 1
			/// @DnDHash : 2F23FCA4
			/// @DnDParent : 2F4B09E2
			var l2F23FCA4_0;
			l2F23FCA4_0 = keyboard_check_pressed(vk_space);
			if (l2F23FCA4_0)
			{
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 5FBF0A8B
				/// @DnDComment : Pew pew pew
				/// @DnDParent : 2F23FCA4
				/// @DnDArgument : "function" "FireWeapons"
				FireWeapons();
			}
		
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
			/// @DnDVersion : 1.1
			/// @DnDHash : 10F54F91
			/// @DnDParent : 2F4B09E2
			var l10F54F91_0;
			l10F54F91_0 = mouse_check_button_pressed(mb_left);
			if (l10F54F91_0)
			{
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 1B31D632
				/// @DnDComment : Pew pew pew
				/// @DnDParent : 10F54F91
				/// @DnDArgument : "function" "FireWeapons"
				FireWeapons();
			}
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 154A1E5E
/// @DnDArgument : "var" "obj_game.resetPosition"
/// @DnDArgument : "value" "1"
if(obj_game.resetPosition == 1)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3E63E4AC
	/// @DnDParent : 154A1E5E
	/// @DnDArgument : "var" "resetT"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "1"
	if(resetT > 1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 66229247
		/// @DnDInput : 3
		/// @DnDParent : 3E63E4AC
		/// @DnDArgument : "expr_1" "x"
		/// @DnDArgument : "expr_2" "y"
		/// @DnDArgument : "var" "obj_game.resetPosition"
		/// @DnDArgument : "var_1" "lastX"
		/// @DnDArgument : "var_2" "lastY"
		obj_game.resetPosition = 0;
		lastX = x;
		lastY = y;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 1B09BF34
	/// @DnDParent : 154A1E5E
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 50366589
		/// @DnDParent : 1B09BF34
		/// @DnDArgument : "expr" "1 / (room_speed)"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "resetT"
		resetT += 1 / (room_speed);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4D7017C5
		/// @DnDInput : 3
		/// @DnDParent : 1B09BF34
		/// @DnDArgument : "expr" "lerp(resetA, 0, resetT)"
		/// @DnDArgument : "expr_1" "lerp(resetX, 200, resetT)"
		/// @DnDArgument : "expr_2" "lerp(resetY, 500, resetT)"
		/// @DnDArgument : "var" "image_angle"
		/// @DnDArgument : "var_1" "x"
		/// @DnDArgument : "var_2" "y"
		image_angle = lerp(resetA, 0, resetT);
		x = lerp(resetX, 200, resetT);
		y = lerp(resetY, 500, resetT);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1E2406E1
/// @DnDArgument : "var" "obj_game.gameState"
/// @DnDArgument : "value" "7"
if(obj_game.gameState == 7)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 744B354F
	/// @DnDParent : 1E2406E1
	/// @DnDArgument : "var" "y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "50"
	if(y < 50)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 19FE5412
		/// @DnDParent : 744B354F
		/// @DnDArgument : "expr" "50"
		/// @DnDArgument : "var" "y"
		y = 50;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 29C3A645
	/// @DnDParent : 1E2406E1
	/// @DnDArgument : "var" "y"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "950"
	if(y > 950)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 02E1E934
		/// @DnDParent : 29C3A645
		/// @DnDArgument : "expr" "950"
		/// @DnDArgument : "var" "y"
		y = 950;
	}
}