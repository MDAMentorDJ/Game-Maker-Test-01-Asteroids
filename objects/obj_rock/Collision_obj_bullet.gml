/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 72CA81D6
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_game.rockCount"
obj_game.rockCount += 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 19D0130B
/// @DnDArgument : "var" "obj_game.powerup_time"
/// @DnDArgument : "op" "1"
if(obj_game.powerup_time < 0)
{
	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 619FFF7B
	/// @DnDInput : 2
	/// @DnDParent : 19D0130B
	/// @DnDArgument : "var" "obj"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "option" "obj_powerup_ghost"
	/// @DnDArgument : "option_1" "obj_powerup_spread"
	var obj = choose(obj_powerup_ghost, obj_powerup_spread);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 61E474DB
	/// @DnDParent : 19D0130B
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj"
	instance_create_layer(x + 0, y + 0, "Instances", obj);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7EB77C5B
	/// @DnDParent : 19D0130B
	/// @DnDArgument : "expr" "20"
	/// @DnDArgument : "var" "obj_game.powerup_time"
	obj_game.powerup_time = 20;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6102D9E8
/// @DnDArgument : "expr" "50"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_game.playerScore"
obj_game.playerScore += 50;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 3720959D
/// @DnDArgument : "soundid" "snd_rockdestroy"
/// @DnDArgument : "gain" ".25"
/// @DnDSaveInfo : "soundid" "snd_rockdestroy"
audio_play_sound(snd_rockdestroy, 0, 0, .25, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 71F1963B
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_rock_big"
if(sprite_index == spr_rock_big)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7E220875
	/// @DnDParent : 71F1963B
	/// @DnDArgument : "var" "obj_game.gameState"
	/// @DnDArgument : "value" "13"
	if(obj_game.gameState == 13)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 2396EE0A
		/// @DnDParent : 7E220875
		/// @DnDArgument : "spriteind" "spr_ella_ship"
		/// @DnDSaveInfo : "spriteind" "spr_ella_ship"
		sprite_index = spr_ella_ship;
		image_index = 0;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 2A7C908C
	/// @DnDParent : 71F1963B
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 2465A62D
		/// @DnDParent : 2A7C908C
		/// @DnDArgument : "spriteind" "spr_rock_small"
		/// @DnDSaveInfo : "spriteind" "spr_rock_small"
		sprite_index = spr_rock_small;
		image_index = 0;
	}

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 184A4597
	/// @DnDParent : 71F1963B
	/// @DnDArgument : "function" "instance_copy"
	/// @DnDArgument : "arg" "true"
	instance_copy(true);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7C6E7970
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2283DDFD
	/// @DnDParent : 7C6E7970
	/// @DnDArgument : "var" "instance_number(obj_rock)"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "12"
	if(instance_number(obj_rock) < 12)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6917E90D
		/// @DnDParent : 2283DDFD
		/// @DnDArgument : "var" "obj_game.gameState"
		/// @DnDArgument : "value" "13"
		if(obj_game.gameState == 13)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 10DD7C76
			/// @DnDParent : 6917E90D
			/// @DnDArgument : "spriteind" "spr_ella_ship"
			/// @DnDSaveInfo : "spriteind" "spr_ella_ship"
			sprite_index = spr_ella_ship;
			image_index = 0;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 2C9A4D56
		/// @DnDParent : 2283DDFD
		else
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 47770037
			/// @DnDParent : 2C9A4D56
			/// @DnDArgument : "spriteind" "spr_rock_big"
			/// @DnDSaveInfo : "spriteind" "spr_rock_big"
			sprite_index = spr_rock_big;
			image_index = 0;
		}
	
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 0E8EB514
		/// @DnDInput : 2
		/// @DnDParent : 2283DDFD
		/// @DnDArgument : "var" "rockRandomDir"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option_1" "1"
		var rockRandomDir = choose(0, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 40C53219
		/// @DnDParent : 2283DDFD
		/// @DnDArgument : "var" "rockRandomDir"
		if(rockRandomDir == 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 60E4D1E3
			/// @DnDParent : 40C53219
			/// @DnDArgument : "expr" "-100"
			/// @DnDArgument : "var" "x"
			x = -100;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 29F900A8
		/// @DnDParent : 2283DDFD
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7A972465
			/// @DnDParent : 29F900A8
			/// @DnDArgument : "expr" "1100"
			/// @DnDArgument : "var" "x"
			x = 1100;
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7DE19389
		/// @DnDParent : 2283DDFD
		/// @DnDArgument : "expr" "random_range(0,1000)"
		/// @DnDArgument : "var" "y"
		y = random_range(0,1000);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 07E7DB0F
	/// @DnDParent : 7C6E7970
	else
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1EA8762A
		/// @DnDParent : 07E7DB0F
		instance_destroy();
	}
}