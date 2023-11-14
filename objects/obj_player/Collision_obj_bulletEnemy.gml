/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 2DF8C8AB
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0565F5C0
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "currentHealth"
currentHealth += -1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 066FE3DF
/// @DnDArgument : "var" "currentHealth"
/// @DnDArgument : "op" "3"
if(currentHealth <= 0)
{
	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 0446B714
	/// @DnDParent : 066FE3DF
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "type" "3"
	/// @DnDArgument : "where" "1"
	/// @DnDArgument : "size" "1"
	effect_create_above(3, x + 0, y + 0, 1, $FFFFFF & $ffffff);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 4FDACAFA
	/// @DnDParent : 066FE3DF
	/// @DnDArgument : "soundid" "snd_lose"
	/// @DnDArgument : "gain" ".25"
	/// @DnDSaveInfo : "soundid" "snd_lose"
	audio_play_sound(snd_lose, 0, 0, .25, undefined, 1.0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3BEFAEA9
	/// @DnDParent : 066FE3DF
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 4459AF37
	/// @DnDApplyTo : {obj_game}
	/// @DnDParent : 066FE3DF
	/// @DnDArgument : "steps" "120"
	with(obj_game) {
	alarm_set(0, 120);
	
	}
}