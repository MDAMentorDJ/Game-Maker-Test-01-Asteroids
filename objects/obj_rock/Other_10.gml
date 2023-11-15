/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 05F3DC0A
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_game.rockCount"
obj_game.rockCount += 1;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 6FA529AB
/// @DnDArgument : "var" "tempDiff"
/// @DnDArgument : "value" "0"
var tempDiff = 0;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3AFDADF6
/// @DnDArgument : "var" "obj_game.gameState"
/// @DnDArgument : "value" "19"
if(obj_game.gameState == 19)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0B4006E0
	/// @DnDParent : 3AFDADF6
	/// @DnDArgument : "expr" "floor(obj_game.rockCount / 10)"
	/// @DnDArgument : "var" "tempDiff"
	tempDiff = floor(obj_game.rockCount / 10);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7ADAD1B2
/// @DnDArgument : "var" "obj_game.powerup_time"
/// @DnDArgument : "op" "1"
if(obj_game.powerup_time < 0)
{
	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 5B0ED951
	/// @DnDInput : 2
	/// @DnDParent : 7ADAD1B2
	/// @DnDArgument : "var" "obj"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "option" "obj_powerup_ghost"
	/// @DnDArgument : "option_1" "obj_powerup_spread"
	var obj = choose(obj_powerup_ghost, obj_powerup_spread);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0337DC30
	/// @DnDParent : 7ADAD1B2
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj"
	instance_create_layer(x + 0, y + 0, "Instances", obj);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3E5CFD4D
	/// @DnDParent : 7ADAD1B2
	/// @DnDArgument : "expr" "12"
	/// @DnDArgument : "var" "obj_game.powerup_time"
	obj_game.powerup_time = 12;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 33BFF7FA
/// @DnDArgument : "expr" "50"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_game.playerScore"
obj_game.playerScore += 50;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 2B84B72D
/// @DnDArgument : "soundid" "snd_rockdestroy"
/// @DnDArgument : "gain" ".25"
/// @DnDSaveInfo : "soundid" "snd_rockdestroy"
audio_play_sound(snd_rockdestroy, 0, 0, .25, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 27FB6521
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_rock_big"
if(sprite_index == spr_rock_big)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 61E885C1
	/// @DnDParent : 27FB6521
	/// @DnDArgument : "var" "obj_game.gameState"
	/// @DnDArgument : "value" "13"
	if(obj_game.gameState == 13)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 68611788
		/// @DnDParent : 61E885C1
		/// @DnDArgument : "spriteind" "spr_ella_ship"
		/// @DnDSaveInfo : "spriteind" "spr_ella_ship"
		sprite_index = spr_ella_ship;
		image_index = 0;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 150EAAE3
	/// @DnDParent : 27FB6521
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 2A32B96D
		/// @DnDParent : 150EAAE3
		/// @DnDArgument : "spriteind" "spr_rock_small"
		/// @DnDSaveInfo : "spriteind" "spr_rock_small"
		sprite_index = spr_rock_small;
		image_index = 0;
	}

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 7508EDD8
	/// @DnDParent : 27FB6521
	/// @DnDArgument : "function" "instance_copy"
	/// @DnDArgument : "arg" "true"
	instance_copy(true);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 16E7DBEC
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1524EE7E
	/// @DnDParent : 16E7DBEC
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spr_mary_enemy"
	if(sprite_index == spr_mary_enemy)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 18AB9D54
		/// @DnDParent : 1524EE7E
		/// @DnDArgument : "spriteind" "spr_mary_alien"
		/// @DnDSaveInfo : "spriteind" "spr_mary_alien"
		sprite_index = spr_mary_alien;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 795235B3
		/// @DnDParent : 1524EE7E
		/// @DnDArgument : "function" "instance_copy"
		/// @DnDArgument : "arg" "true"
		instance_copy(true);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 16B8C42D
	/// @DnDParent : 16E7DBEC
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0F67729C
		/// @DnDParent : 16B8C42D
		/// @DnDArgument : "var" "instance_number(obj_rock)"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "12 + tempDiff"
		if(instance_number(obj_rock) < 12 + tempDiff)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4ACC5E02
			/// @DnDParent : 0F67729C
			/// @DnDArgument : "var" "obj_game.gameState"
			/// @DnDArgument : "value" "13"
			if(obj_game.gameState == 13)
			{
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 6E061D8A
				/// @DnDParent : 4ACC5E02
				/// @DnDArgument : "spriteind" "spr_rock_big"
				/// @DnDSaveInfo : "spriteind" "spr_rock_big"
				sprite_index = spr_rock_big;
				image_index = 0;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 1FC770BD
			/// @DnDParent : 0F67729C
			else
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1C72D2D5
				/// @DnDParent : 1FC770BD
				/// @DnDArgument : "var" "obj_game.gameState"
				/// @DnDArgument : "value" "10"
				if(obj_game.gameState == 10)
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 2D6DD978
					/// @DnDParent : 1C72D2D5
					/// @DnDArgument : "spriteind" "spr_mary_enemy"
					/// @DnDSaveInfo : "spriteind" "spr_mary_enemy"
					sprite_index = spr_mary_enemy;
					image_index = 0;
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 4346EB68
				/// @DnDParent : 1FC770BD
				else
				{
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 71DF5343
					/// @DnDParent : 4346EB68
					/// @DnDArgument : "spriteind" "spr_rock_big"
					/// @DnDSaveInfo : "spriteind" "spr_rock_big"
					sprite_index = spr_rock_big;
					image_index = 0;
				}
			}
		
			/// @DnDAction : YoYo Games.Random.Choose
			/// @DnDVersion : 1
			/// @DnDHash : 6C75F68D
			/// @DnDInput : 2
			/// @DnDParent : 0F67729C
			/// @DnDArgument : "var" "rockRandomDir"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "option_1" "1"
			var rockRandomDir = choose(0, 1);
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 29D906B8
			/// @DnDParent : 0F67729C
			/// @DnDArgument : "var" "rockRandomDir"
			if(rockRandomDir == 0)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2D8A1D81
				/// @DnDParent : 29D906B8
				/// @DnDArgument : "expr" "-100"
				/// @DnDArgument : "var" "x"
				x = -100;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 4273AF85
			/// @DnDParent : 0F67729C
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4E36095B
				/// @DnDParent : 4273AF85
				/// @DnDArgument : "expr" "1100"
				/// @DnDArgument : "var" "x"
				x = 1100;
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 65C28AA9
			/// @DnDParent : 0F67729C
			/// @DnDArgument : "expr" "random_range(0,1000)"
			/// @DnDArgument : "var" "y"
			y = random_range(0,1000);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 4FDACCFF
		/// @DnDParent : 16B8C42D
		else
		{
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 1EC63F56
			/// @DnDParent : 4FDACCFF
			instance_destroy();
		}
	}
}