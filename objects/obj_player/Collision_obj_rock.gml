/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 28FCF137
/// @DnDArgument : "var" "powerup"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "2"
if(!(powerup == 2))
{
	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 0D9A5EE0
	/// @DnDParent : 28FCF137
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "type" "3"
	/// @DnDArgument : "where" "1"
	/// @DnDArgument : "size" "1"
	effect_create_above(3, x + 0, y + 0, 1, $FFFFFF & $ffffff);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 684E8473
	/// @DnDParent : 28FCF137
	/// @DnDArgument : "soundid" "snd_lose"
	/// @DnDArgument : "gain" ".25"
	/// @DnDSaveInfo : "soundid" "snd_lose"
	audio_play_sound(snd_lose, 0, 0, .25, undefined, 1.0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 016EF506
	/// @DnDParent : 28FCF137
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 3D486593
	/// @DnDApplyTo : {obj_game}
	/// @DnDParent : 28FCF137
	/// @DnDArgument : "steps" "120"
	with(obj_game) {
	alarm_set(0, 120);
	
	}
}