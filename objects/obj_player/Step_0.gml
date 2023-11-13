/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 77BDD9AA
/// @DnDArgument : "var" "obj_game.playerInControl"
/// @DnDArgument : "value" "1"
if(obj_game.playerInControl == 1)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 3DEEB781
	/// @DnDComment : Move the player$(13_10)
	/// @DnDParent : 77BDD9AA
	/// @DnDArgument : "function" "MovePlayer"
	MovePlayer();

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 2F23FCA4
	/// @DnDParent : 77BDD9AA
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
	/// @DnDParent : 77BDD9AA
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
		/// @DnDParent : 3E63E4AC
		/// @DnDArgument : "var" "obj_game.resetPosition"
		obj_game.resetPosition = 0;
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