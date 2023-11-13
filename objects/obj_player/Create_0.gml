/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4EFAF406
/// @DnDInput : 11
/// @DnDArgument : "var" "resetX"
/// @DnDArgument : "var_1" "resetY"
/// @DnDArgument : "var_2" "resetA"
/// @DnDArgument : "var_3" "resetT"
/// @DnDArgument : "var_4" "powerup"
/// @DnDArgument : "var_5" "lastX"
/// @DnDArgument : "var_6" "lastY"
/// @DnDArgument : "var_7" "angleTimer"
/// @DnDArgument : "var_8" "dx"
/// @DnDArgument : "var_9" "dy"
/// @DnDArgument : "var_10" "bulletTimer"
resetX = 0;
resetY = 0;
resetA = 0;
resetT = 0;
powerup = 0;
lastX = 0;
lastY = 0;
angleTimer = 0;
dx = 0;
dy = 0;
bulletTimer = 0;

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
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 63AE0077
	/// @DnDParent : 4993070F
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_bullet"
	/// @DnDSaveInfo : "objectid" "obj_bullet"
	instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 6921A0FF
	/// @DnDParent : 4993070F
	/// @DnDArgument : "soundid" "snd_shoot"
	/// @DnDArgument : "gain" ".25"
	/// @DnDArgument : "pitch" "random_range(.8,1.2)"
	/// @DnDSaveInfo : "soundid" "snd_shoot"
	audio_play_sound(snd_shoot, 0, 0, .25, undefined, random_range(.8,1.2));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 62608FC5
	/// @DnDParent : 4993070F
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

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 444BB7B0
/// @DnDArgument : "funcName" "MovePlayerWithMouse"
function MovePlayerWithMouse() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 42C456C2
	/// @DnDInput : 4
	/// @DnDParent : 444BB7B0
	/// @DnDArgument : "expr" "mouse_x"
	/// @DnDArgument : "expr_1" "mouse_y"
	/// @DnDArgument : "expr_2" "1/room_speed"
	/// @DnDArgument : "expr_relative_2" "1"
	/// @DnDArgument : "expr_3" "1/room_speed"
	/// @DnDArgument : "expr_relative_3" "1"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	/// @DnDArgument : "var_2" "angleTimer"
	/// @DnDArgument : "var_3" "bulletTimer"
	x = mouse_x;
	y = mouse_y;
	angleTimer += 1/room_speed;
	bulletTimer += 1/room_speed;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 530D100A
	/// @DnDComment : How often to update the player angle
	/// @DnDParent : 444BB7B0
	/// @DnDArgument : "var" "angleTimer"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" ".05"
	if(angleTimer >= .05)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 37330EF1
		/// @DnDInput : 3
		/// @DnDParent : 530D100A
		/// @DnDArgument : "expr_1" "x - lastX"
		/// @DnDArgument : "expr_2" "y - lastY"
		/// @DnDArgument : "var" "angleTimer"
		/// @DnDArgument : "var_1" "dx"
		/// @DnDArgument : "var_2" "dy"
		angleTimer = 0;
		dx = x - lastX;
		dy = y - lastY;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7085F42E
		/// @DnDComment : Make sure we moved some amount$(13_10)We'll check the squared distance$(13_10)against 25, which is the same$(13_10)as seeing if we moved more than$(13_10)5 (or about .3% of the screen)
		/// @DnDParent : 530D100A
		/// @DnDArgument : "var" "dx * dx + dy * dy"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "25"
		if(dx * dx + dy * dy >= 25)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 06F16FAC
			/// @DnDParent : 7085F42E
			/// @DnDArgument : "expr" "radtodeg(arctan2(-dy,dx))"
			/// @DnDArgument : "var" "image_angle"
			image_angle = radtodeg(arctan2(-dy,dx));
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 096B7B50
		/// @DnDInput : 2
		/// @DnDParent : 530D100A
		/// @DnDArgument : "expr" "x"
		/// @DnDArgument : "expr_1" "y"
		/// @DnDArgument : "var" "lastX"
		/// @DnDArgument : "var_1" "lastY"
		lastX = x;
		lastY = y;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3A6E3770
	/// @DnDParent : 444BB7B0
	/// @DnDArgument : "var" "bulletTimer"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" ".33"
	if(bulletTimer >= .33)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4D33B470
		/// @DnDParent : 3A6E3770
		/// @DnDArgument : "var" "bulletTimer"
		bulletTimer = 0;
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 2735DAD3
		/// @DnDParent : 3A6E3770
		/// @DnDArgument : "function" "FireWeapons"
		FireWeapons();
	}
}