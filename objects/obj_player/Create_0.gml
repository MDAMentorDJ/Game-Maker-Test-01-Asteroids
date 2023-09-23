/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2521EC89
/// @DnDComment : The players movement
/// @DnDArgument : "funcName" "MovePlayer"
function MovePlayer() 
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 6E67CD3B
	/// @DnDParent : 2521EC89
	/// @DnDArgument : "key" "vk_up"
	var l6E67CD3B_0;
	l6E67CD3B_0 = keyboard_check(vk_up);
	if (l6E67CD3B_0)
	{
		/// @DnDAction : YoYo Games.Movement.Add_Motion
		/// @DnDVersion : 1
		/// @DnDHash : 19B6A7F4
		/// @DnDParent : 6E67CD3B
		/// @DnDArgument : "dir" "image_angle"
		/// @DnDArgument : "speed" "playerSpeed"
		motion_add(image_angle, playerSpeed);
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 08387C87
	/// @DnDParent : 2521EC89
	/// @DnDArgument : "key" "ord("W")"
	var l08387C87_0;
	l08387C87_0 = keyboard_check(ord("W"));
	if (l08387C87_0)
	{
		/// @DnDAction : YoYo Games.Movement.Add_Motion
		/// @DnDVersion : 1
		/// @DnDHash : 3F280A74
		/// @DnDParent : 08387C87
		/// @DnDArgument : "dir" "image_angle"
		/// @DnDArgument : "speed" "playerSpeed"
		motion_add(image_angle, playerSpeed);
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 1DBCE62B
	/// @DnDParent : 2521EC89
	/// @DnDArgument : "key" "vk_left"
	var l1DBCE62B_0;
	l1DBCE62B_0 = keyboard_check(vk_left);
	if (l1DBCE62B_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 78622AD4
		/// @DnDParent : 1DBCE62B
		/// @DnDArgument : "expr" "playerSpin"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "image_angle"
		image_angle += playerSpin;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 04C6ADF2
	/// @DnDParent : 2521EC89
	/// @DnDArgument : "key" "ord("A")"
	var l04C6ADF2_0;
	l04C6ADF2_0 = keyboard_check(ord("A"));
	if (l04C6ADF2_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 61285AEA
		/// @DnDParent : 04C6ADF2
		/// @DnDArgument : "expr" "playerSpin"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "image_angle"
		image_angle += playerSpin;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 2D7BB9A0
	/// @DnDParent : 2521EC89
	/// @DnDArgument : "key" "vk_right"
	var l2D7BB9A0_0;
	l2D7BB9A0_0 = keyboard_check(vk_right);
	if (l2D7BB9A0_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 489DB9C9
		/// @DnDParent : 2D7BB9A0
		/// @DnDArgument : "expr" "-playerSpin"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "image_angle"
		image_angle += -playerSpin;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 2BDC3F2F
	/// @DnDParent : 2521EC89
	/// @DnDArgument : "key" "ord("D")"
	var l2BDC3F2F_0;
	l2BDC3F2F_0 = keyboard_check(ord("D"));
	if (l2BDC3F2F_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 791BBC28
		/// @DnDParent : 2BDC3F2F
		/// @DnDArgument : "expr" "-playerSpin"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "image_angle"
		image_angle += -playerSpin;
	}

	/// @DnDAction : YoYo Games.Movement.Wrap_Room
	/// @DnDVersion : 1
	/// @DnDHash : 7AEEF257
	/// @DnDParent : 2521EC89
	move_wrap(1, 1, 0);
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 4993070F
/// @DnDArgument : "funcName" "FireWeapons"
function FireWeapons() 
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 36B76213
	/// @DnDParent : 4993070F
	var l36B76213_0;
	l36B76213_0 = keyboard_check_pressed(vk_space);
	if (l36B76213_0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 63AE0077
		/// @DnDParent : 36B76213
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_bullet"
		/// @DnDSaveInfo : "objectid" "obj_bullet"
		instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 6921A0FF
		/// @DnDParent : 36B76213
		/// @DnDArgument : "soundid" "snd_shoot"
		/// @DnDArgument : "gain" ".25"
		/// @DnDArgument : "pitch" "random_range(.8,1.2)"
		/// @DnDSaveInfo : "soundid" "snd_shoot"
		audio_play_sound(snd_shoot, 0, 0, .25, undefined, random_range(.8,1.2));
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 62608FC5
		/// @DnDParent : 36B76213
		/// @DnDArgument : "var" "powerup"
		/// @DnDArgument : "value" "1"
		if(powerup == 1)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 544C08C3
			/// @DnDParent : 62608FC5
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "bullet"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_bullet"
			/// @DnDSaveInfo : "objectid" "obj_bullet"
			var bullet = instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7507DA79
			/// @DnDParent : 62608FC5
			/// @DnDArgument : "expr" "10"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "bullet.direction"
			bullet.direction += 10;
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 273747D5
			/// @DnDParent : 62608FC5
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "bullet"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_bullet"
			/// @DnDSaveInfo : "objectid" "obj_bullet"
			var bullet = instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 50B3BF00
			/// @DnDParent : 62608FC5
			/// @DnDArgument : "expr" "-10"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "bullet.direction"
			bullet.direction += -10;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5312395D
/// @DnDArgument : "var" "powerup"
powerup = 0;