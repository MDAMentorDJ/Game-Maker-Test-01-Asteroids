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
/// @DnDComment : Basic Level (1)
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
		/// @DnDComment : Move to the next game state$(13_10)Remove Player Control$(13_10)Show the next set of instructions$(13_10)Have the player reset position$(13_10)Reset the rock count
		/// @DnDInput : 6
		/// @DnDParent : 5EA7F8BB
		/// @DnDArgument : "expr" "2"
		/// @DnDArgument : "expr_2" "1"
		/// @DnDArgument : "expr_3" ""Melanie's Level""
		/// @DnDArgument : "expr_5" ""Melanie's Level\nUse the Mouse to Move\nYou will shoot automatically\nClick to Begin""
		/// @DnDArgument : "var" "gameState"
		/// @DnDArgument : "var_1" "playerInControl"
		/// @DnDArgument : "var_2" "showInstructions"
		/// @DnDArgument : "var_3" "levelName"
		/// @DnDArgument : "var_4" "rockCount"
		/// @DnDArgument : "var_5" "instructions"
		gameState = 2;
		playerInControl = 0;
		showInstructions = 1;
		levelName = "Melanie's Level";
		rockCount = 0;
		instructions = "Melanie's Level\nUse the Mouse to Move\nYou will shoot automatically\nClick to Begin";
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0D4785F7
		/// @DnDParent : 5EA7F8BB
		/// @DnDArgument : "expr" ""Asteroids " + string(rockCount) + " / " + string(rockTarget)"
		/// @DnDArgument : "var" "subText"
		subText = "Asteroids " + string(rockCount) + " / " + string(rockTarget);
	
		/// @DnDAction : YoYo Games.Instances.Call_User_Event
		/// @DnDVersion : 1
		/// @DnDHash : 7A430348
		/// @DnDComment : Reset the players position
		/// @DnDParent : 5EA7F8BB
		/// @DnDArgument : "event" "1"
		event_user(1);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 228EEC7B
/// @DnDArgument : "var" "gameState"
/// @DnDArgument : "value" "2"
if(gameState == 2)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2C7FA5C2
	/// @DnDComment : Lets wait for the player position to be reset
	/// @DnDParent : 228EEC7B
	/// @DnDArgument : "var" "resetPosition"
	if(resetPosition == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 31DEF8A1
		/// @DnDParent : 2C7FA5C2
		/// @DnDArgument : "expr" "3"
		/// @DnDArgument : "var" "gameState"
		gameState = 3;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 36514F4B
/// @DnDComment : Melanie's Level Intro (3)
/// @DnDArgument : "var" "gameState"
/// @DnDArgument : "value" "3"
if(gameState == 3)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
	/// @DnDVersion : 1.1
	/// @DnDHash : 0F585C87
	/// @DnDParent : 36514F4B
	var l0F585C87_0;
	l0F585C87_0 = mouse_check_button_pressed(mb_left);
	if (l0F585C87_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 404B5B0C
		/// @DnDInput : 3
		/// @DnDParent : 0F585C87
		/// @DnDArgument : "expr" "4"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "var" "gameState"
		/// @DnDArgument : "var_1" "playerInControl"
		/// @DnDArgument : "var_2" "showInstructions"
		gameState = 4;
		playerInControl = 1;
		showInstructions = 0;
	
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 574F53D4
		/// @DnDComment : User event 0 Spawns a rock in a random location
		/// @DnDParent : 0F585C87
		/// @DnDArgument : "times" "6"
		repeat(6)
		{
			/// @DnDAction : YoYo Games.Instances.Call_User_Event
			/// @DnDVersion : 1
			/// @DnDHash : 0A6D8BB2
			/// @DnDParent : 574F53D4
			event_user(0);
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4C7F115A
/// @DnDComment : Melanie's Level (4)
/// @DnDArgument : "var" "gameState"
/// @DnDArgument : "value" "4"
if(gameState == 4)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3ED2E114
	/// @DnDParent : 4C7F115A
	/// @DnDArgument : "expr" ""Asteroids " + string(rockCount) + " / " + string(rockTarget)"
	/// @DnDArgument : "var" "subText"
	subText = "Asteroids " + string(rockCount) + " / " + string(rockTarget);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 13EB12F3
	/// @DnDParent : 4C7F115A
	/// @DnDArgument : "var" "rockCount"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "rockTarget"
	if(rockCount >= rockTarget)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 08E55541
		/// @DnDComment : Remove the rocks
		/// @DnDApplyTo : {obj_rock}
		/// @DnDParent : 13EB12F3
		with(obj_rock) instance_destroy();
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 724CCDD1
		/// @DnDComment : Move to the next game state$(13_10)Remove Player Control$(13_10)Show the next set of instructions$(13_10)Have the player reset position$(13_10)Reset the rock count
		/// @DnDInput : 6
		/// @DnDParent : 13EB12F3
		/// @DnDArgument : "expr" "5"
		/// @DnDArgument : "expr_2" "1"
		/// @DnDArgument : "expr_3" ""Next Level""
		/// @DnDArgument : "expr_5" ""Next Level Instructions""
		/// @DnDArgument : "var" "gameState"
		/// @DnDArgument : "var_1" "playerInControl"
		/// @DnDArgument : "var_2" "showInstructions"
		/// @DnDArgument : "var_3" "levelName"
		/// @DnDArgument : "var_4" "rockCount"
		/// @DnDArgument : "var_5" "instructions"
		gameState = 5;
		playerInControl = 0;
		showInstructions = 1;
		levelName = "Next Level";
		rockCount = 0;
		instructions = "Next Level Instructions";
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6F2157A8
		/// @DnDParent : 13EB12F3
		/// @DnDArgument : "expr" ""Asteroids " + string(rockCount) + " / " + string(rockTarget)"
		/// @DnDArgument : "var" "subText"
		subText = "Asteroids " + string(rockCount) + " / " + string(rockTarget);
	
		/// @DnDAction : YoYo Games.Instances.Call_User_Event
		/// @DnDVersion : 1
		/// @DnDHash : 6591EF56
		/// @DnDComment : Reset the players position
		/// @DnDParent : 13EB12F3
		/// @DnDArgument : "event" "1"
		event_user(1);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 215EB42C
/// @DnDArgument : "var" "gameState"
/// @DnDArgument : "value" "5"
if(gameState == 5)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2A63D83C
	/// @DnDComment : Lets wait for the player position to be reset
	/// @DnDParent : 215EB42C
	/// @DnDArgument : "var" "resetPosition"
	if(resetPosition == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 598D5C20
		/// @DnDParent : 2A63D83C
		/// @DnDArgument : "expr" "6"
		/// @DnDArgument : "var" "gameState"
		gameState = 6;
	}
}