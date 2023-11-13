/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 606CDCF7
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "-delta_time /  1000000"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "powerup_time"


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 26259777
/// @DnDComment : Game State 0 is starting the level waiting for player to press start
/// @DnDArgument : "var" "gameState"
if(gameState == 0)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 26E9347E
	/// @DnDParent : 26259777
	var l26E9347E_0;
	l26E9347E_0 = keyboard_check(vk_space);
	if (l26E9347E_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2021EC8C
		/// @DnDComment : Set the game state to 1$(13_10)Which is the first level$(13_10)Allow the player to be in control$(13_10)Hide the instructions
		/// @DnDInput : 3
		/// @DnDParent : 26E9347E
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "var" "gameState"
		/// @DnDArgument : "var_1" "playerInControl"
		/// @DnDArgument : "var_2" "showInstructions"
		gameState = 1;
		playerInControl = 1;
		showInstructions = 0;
	
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 463DFCDD
		/// @DnDComment : User event 0 Spawns a rock in a random location
		/// @DnDParent : 26E9347E
		/// @DnDArgument : "times" "6"
		repeat(6)
		{
			/// @DnDAction : YoYo Games.Instances.Call_User_Event
			/// @DnDVersion : 1
			/// @DnDHash : 0492C65F
			/// @DnDParent : 463DFCDD
			event_user(0);
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5C6DFEBD
/// @DnDArgument : "var" "gameState"
/// @DnDArgument : "value" "1"
if(gameState == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1A5A091F
	/// @DnDParent : 5C6DFEBD
	/// @DnDArgument : "expr" ""Asteroids " + string(rockCount) + " / " + string(rockTarget)"
	/// @DnDArgument : "var" "subText"
	subText = "Asteroids " + string(rockCount) + " / " + string(rockTarget);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5EA7F8BB
	/// @DnDParent : 5C6DFEBD
	/// @DnDArgument : "var" "rockCount"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "rockTarget"
	if(rockCount >= rockTarget)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7E1E0EBD
		/// @DnDComment : Remove the rocks
		/// @DnDApplyTo : {obj_rock}
		/// @DnDParent : 5EA7F8BB
		with(obj_rock) instance_destroy();
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 497ECB8E
		/// @DnDComment : Move to the next game state$(13_10)Remove Player Control$(13_10)Show the next set of instructions$(13_10)Have the player reset position
		/// @DnDInput : 4
		/// @DnDParent : 5EA7F8BB
		/// @DnDArgument : "expr" "2"
		/// @DnDArgument : "expr_2" "1"
		/// @DnDArgument : "expr_3" ""Next Level""
		/// @DnDArgument : "var" "gameState"
		/// @DnDArgument : "var_1" "playerInControl"
		/// @DnDArgument : "var_2" "showInstructions"
		/// @DnDArgument : "var_3" "levelName"
		gameState = 2;
		playerInControl = 0;
		showInstructions = 1;
		levelName = "Next Level";
	
		/// @DnDAction : YoYo Games.Instances.Call_User_Event
		/// @DnDVersion : 1
		/// @DnDHash : 7A430348
		/// @DnDParent : 5EA7F8BB
		/// @DnDArgument : "event" "1"
		event_user(1);
	}
}