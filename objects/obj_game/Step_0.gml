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
		/// @DnDArgument : "expr_3" ""Luc's Level""
		/// @DnDArgument : "expr_5" ""Luc's Level\nUse Up/Down to Move\nPress Space to shoot\nPress Space to Begin""
		/// @DnDArgument : "var" "gameState"
		/// @DnDArgument : "var_1" "playerInControl"
		/// @DnDArgument : "var_2" "showInstructions"
		/// @DnDArgument : "var_3" "levelName"
		/// @DnDArgument : "var_4" "rockCount"
		/// @DnDArgument : "var_5" "instructions"
		gameState = 5;
		playerInControl = 0;
		showInstructions = 1;
		levelName = "Luc's Level";
		rockCount = 0;
		instructions = "Luc's Level\nUse Up/Down to Move\nPress Space to shoot\nPress Space to Begin";
	
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

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 18EF94BE
/// @DnDComment : Luc's Level Intro (6)
/// @DnDArgument : "var" "gameState"
/// @DnDArgument : "value" "6"
if(gameState == 6)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 4713EC46
	/// @DnDParent : 18EF94BE
	var l4713EC46_0;
	l4713EC46_0 = keyboard_check_pressed(vk_space);
	if (l4713EC46_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0039F824
		/// @DnDInput : 3
		/// @DnDParent : 4713EC46
		/// @DnDArgument : "expr" "7"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "var" "gameState"
		/// @DnDArgument : "var_1" "playerInControl"
		/// @DnDArgument : "var_2" "showInstructions"
		gameState = 7;
		playerInControl = 1;
		showInstructions = 0;
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 4CA7846E
		/// @DnDInput : 2
		/// @DnDParent : 4713EC46
		/// @DnDArgument : "function" "layer_hspeed"
		/// @DnDArgument : "arg" "layer_get_id("Background")"
		/// @DnDArgument : "arg_1" "-3"
		layer_hspeed(layer_get_id("Background"), -3);
	
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 7606C72E
		/// @DnDComment : User event 0 Spawns a rock in a random location
		/// @DnDParent : 4713EC46
		/// @DnDArgument : "times" "6"
		repeat(6)
		{
			/// @DnDAction : YoYo Games.Instances.Call_User_Event
			/// @DnDVersion : 1
			/// @DnDHash : 2C233D39
			/// @DnDParent : 7606C72E
			event_user(0);
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1F21C11B
/// @DnDComment : Luc's Level (7)
/// @DnDArgument : "var" "gameState"
/// @DnDArgument : "value" "7"
if(gameState == 7)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 504E0801
	/// @DnDParent : 1F21C11B
	/// @DnDArgument : "expr" ""Asteroids " + string(rockCount) + " / " + string(rockTarget)"
	/// @DnDArgument : "var" "subText"
	subText = "Asteroids " + string(rockCount) + " / " + string(rockTarget);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 63625226
	/// @DnDParent : 1F21C11B
	/// @DnDArgument : "var" "rockCount"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "rockTarget"
	if(rockCount >= rockTarget)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 05E2D996
		/// @DnDComment : Remove the rocks
		/// @DnDApplyTo : {obj_rock}
		/// @DnDParent : 63625226
		with(obj_rock) instance_destroy();
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5CB8A88A
		/// @DnDComment : Move to the next game state$(13_10)Remove Player Control$(13_10)Show the next set of instructions$(13_10)Have the player reset position$(13_10)Reset the rock count
		/// @DnDInput : 6
		/// @DnDParent : 63625226
		/// @DnDArgument : "expr" "8"
		/// @DnDArgument : "expr_2" "1"
		/// @DnDArgument : "expr_3" ""Mary's Level""
		/// @DnDArgument : "expr_5" ""Mary's Level\nUse Arrow Keys to Move\nUse Mouse to Shoot\nPress Space to Begin""
		/// @DnDArgument : "var" "gameState"
		/// @DnDArgument : "var_1" "playerInControl"
		/// @DnDArgument : "var_2" "showInstructions"
		/// @DnDArgument : "var_3" "levelName"
		/// @DnDArgument : "var_4" "rockCount"
		/// @DnDArgument : "var_5" "instructions"
		gameState = 8;
		playerInControl = 0;
		showInstructions = 1;
		levelName = "Mary's Level";
		rockCount = 0;
		instructions = "Mary's Level\nUse Arrow Keys to Move\nUse Mouse to Shoot\nPress Space to Begin";
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 60033AA2
		/// @DnDParent : 63625226
		/// @DnDArgument : "expr" ""Asteroids " + string(rockCount) + " / " + string(rockTarget)"
		/// @DnDArgument : "var" "subText"
		subText = "Asteroids " + string(rockCount) + " / " + string(rockTarget);
	
		/// @DnDAction : YoYo Games.Instances.Call_User_Event
		/// @DnDVersion : 1
		/// @DnDHash : 78A74DAE
		/// @DnDComment : Reset the players position
		/// @DnDParent : 63625226
		/// @DnDArgument : "event" "1"
		event_user(1);
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 5C090B03
		/// @DnDInput : 2
		/// @DnDParent : 63625226
		/// @DnDArgument : "function" "layer_hspeed"
		/// @DnDArgument : "arg" "layer_get_id("Background")"
		/// @DnDArgument : "arg_1" "-.5"
		layer_hspeed(layer_get_id("Background"), -.5);
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 73B3D548
		/// @DnDComment : Set the players sprite to Mary's ship
		/// @DnDApplyTo : {obj_player}
		/// @DnDParent : 63625226
		/// @DnDArgument : "spriteind" "spr_mary_ship"
		/// @DnDSaveInfo : "spriteind" "spr_mary_ship"
		with(obj_player) {
		sprite_index = spr_mary_ship;
		image_index = 0;
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 09DC102F
/// @DnDArgument : "var" "gameState"
/// @DnDArgument : "value" "8"
if(gameState == 8)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 428C7151
	/// @DnDComment : Lets wait for the player position to be reset
	/// @DnDParent : 09DC102F
	/// @DnDArgument : "var" "resetPosition"
	if(resetPosition == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 544BB1B9
		/// @DnDParent : 428C7151
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "gameState"
		gameState += 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4ADC2C20
/// @DnDComment : Mary's Level (9)
/// @DnDArgument : "var" "gameState"
/// @DnDArgument : "value" "9"
if(gameState == 9)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 03E30126
	/// @DnDParent : 4ADC2C20
	var l03E30126_0;
	l03E30126_0 = keyboard_check_pressed(vk_space);
	if (l03E30126_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 760F6C7B
		/// @DnDInput : 3
		/// @DnDParent : 03E30126
		/// @DnDArgument : "expr" "10"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "var" "gameState"
		/// @DnDArgument : "var_1" "playerInControl"
		/// @DnDArgument : "var_2" "showInstructions"
		gameState = 10;
		playerInControl = 1;
		showInstructions = 0;
	
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 572BA065
		/// @DnDComment : User event 0 Spawns a rock in a random location
		/// @DnDParent : 03E30126
		/// @DnDArgument : "times" "6"
		repeat(6)
		{
			/// @DnDAction : YoYo Games.Instances.Call_User_Event
			/// @DnDVersion : 1
			/// @DnDHash : 05C585F9
			/// @DnDParent : 572BA065
			event_user(0);
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1479BFE7
/// @DnDComment : Mary's level (10)
/// @DnDArgument : "var" "gameState"
/// @DnDArgument : "value" "10"
if(gameState == 10)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0A835DA1
	/// @DnDParent : 1479BFE7
	/// @DnDArgument : "expr" ""Asteroids " + string(rockCount) + " / " + string(rockTarget)"
	/// @DnDArgument : "var" "subText"
	subText = "Asteroids " + string(rockCount) + " / " + string(rockTarget);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 53EC5B66
	/// @DnDParent : 1479BFE7
	/// @DnDArgument : "var" "rockCount"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "rockTarget"
	if(rockCount >= rockTarget)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7239D5F5
		/// @DnDComment : Remove the rocks
		/// @DnDApplyTo : {obj_rock}
		/// @DnDParent : 53EC5B66
		with(obj_rock) instance_destroy();
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2A9655DD
		/// @DnDComment : Move to the next game state$(13_10)Remove Player Control$(13_10)Show the next set of instructions$(13_10)Have the player reset position$(13_10)Reset the rock count
		/// @DnDInput : 6
		/// @DnDParent : 53EC5B66
		/// @DnDArgument : "expr" "11"
		/// @DnDArgument : "expr_2" "1"
		/// @DnDArgument : "expr_3" ""Ella's Level""
		/// @DnDArgument : "expr_5" ""Ella's Level\nUse Arrow Keys to Move\nUse Mouse to Shoot\nPress Space to Begin""
		/// @DnDArgument : "var" "gameState"
		/// @DnDArgument : "var_1" "playerInControl"
		/// @DnDArgument : "var_2" "showInstructions"
		/// @DnDArgument : "var_3" "levelName"
		/// @DnDArgument : "var_4" "rockCount"
		/// @DnDArgument : "var_5" "instructions"
		gameState = 11;
		playerInControl = 0;
		showInstructions = 1;
		levelName = "Ella's Level";
		rockCount = 0;
		instructions = "Ella's Level\nUse Arrow Keys to Move\nUse Mouse to Shoot\nPress Space to Begin";
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7311BDFC
		/// @DnDParent : 53EC5B66
		/// @DnDArgument : "expr" ""Asteroids " + string(rockCount) + " / " + string(rockTarget)"
		/// @DnDArgument : "var" "subText"
		subText = "Asteroids " + string(rockCount) + " / " + string(rockTarget);
	
		/// @DnDAction : YoYo Games.Instances.Call_User_Event
		/// @DnDVersion : 1
		/// @DnDHash : 0040EF36
		/// @DnDComment : Reset the players position
		/// @DnDParent : 53EC5B66
		/// @DnDArgument : "event" "1"
		event_user(1);
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 0F81234D
		/// @DnDComment : Set the players sprite back!
		/// @DnDApplyTo : {obj_player}
		/// @DnDParent : 53EC5B66
		/// @DnDArgument : "spriteind" "spr_player"
		/// @DnDSaveInfo : "spriteind" "spr_player"
		with(obj_player) {
		sprite_index = spr_player;
		image_index = 0;
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 03BE07A1
/// @DnDArgument : "var" "gameState"
/// @DnDArgument : "value" "11"
if(gameState == 11)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 23CB7D20
	/// @DnDComment : Lets wait for the player position to be reset
	/// @DnDParent : 03BE07A1
	/// @DnDArgument : "var" "resetPosition"
	if(resetPosition == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1D348A0B
		/// @DnDParent : 23CB7D20
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "gameState"
		gameState += 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1336E671
/// @DnDComment : Ella's level Intro (12)
/// @DnDArgument : "var" "gameState"
/// @DnDArgument : "value" "12"
if(gameState == 12)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 3416AC66
	/// @DnDParent : 1336E671
	var l3416AC66_0;
	l3416AC66_0 = keyboard_check_pressed(vk_space);
	if (l3416AC66_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 501A9A6D
		/// @DnDInput : 3
		/// @DnDParent : 3416AC66
		/// @DnDArgument : "expr" "13"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "var" "gameState"
		/// @DnDArgument : "var_1" "playerInControl"
		/// @DnDArgument : "var_2" "showInstructions"
		gameState = 13;
		playerInControl = 1;
		showInstructions = 0;
	
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 3FBFB1D2
		/// @DnDComment : User event 0 Spawns a rock in a random location
		/// @DnDParent : 3416AC66
		/// @DnDArgument : "times" "6"
		repeat(6)
		{
			/// @DnDAction : YoYo Games.Instances.Call_User_Event
			/// @DnDVersion : 1
			/// @DnDHash : 1998B52A
			/// @DnDParent : 3FBFB1D2
			event_user(0);
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 036C09E5
/// @DnDComment : Ella's level (13)
/// @DnDArgument : "var" "gameState"
/// @DnDArgument : "value" "13"
if(gameState == 13)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 618E15F4
	/// @DnDParent : 036C09E5
	/// @DnDArgument : "obj" "obj_player"
	/// @DnDSaveInfo : "obj" "obj_player"
	var l618E15F4_0 = false;
	l618E15F4_0 = instance_exists(obj_player);
	if(l618E15F4_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 431D41BD
		/// @DnDParent : 618E15F4
		/// @DnDArgument : "expr" ""Asteroids " + string(rockCount) + " / " + string(rockTarget) + "\n" + "Health " + string(obj_player.currentHealth) + " / " + string(obj_player.maxHealth)"
		/// @DnDArgument : "var" "subText"
		subText = "Asteroids " + string(rockCount) + " / " + string(rockTarget) + "\n" + "Health " + string(obj_player.currentHealth) + " / " + string(obj_player.maxHealth);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 2E5EA8F3
	/// @DnDParent : 036C09E5
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 428DA479
		/// @DnDParent : 2E5EA8F3
		/// @DnDArgument : "expr" ""Asteroids " + string(rockCount) + " / " + string(rockTarget) + "\n" + "Health - Destroyed""
		/// @DnDArgument : "var" "subText"
		subText = "Asteroids " + string(rockCount) + " / " + string(rockTarget) + "\n" + "Health - Destroyed";
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 52D7C74E
	/// @DnDParent : 036C09E5
	/// @DnDArgument : "var" "rockCount"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "rockTarget"
	if(rockCount >= rockTarget)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 08862D71
		/// @DnDComment : Remove the rocks
		/// @DnDApplyTo : {obj_rock}
		/// @DnDParent : 52D7C74E
		with(obj_rock) instance_destroy();
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4DC4D8F8
		/// @DnDComment : Move to the next game state$(13_10)Remove Player Control$(13_10)Show the next set of instructions$(13_10)Have the player reset position$(13_10)Reset the rock count
		/// @DnDInput : 7
		/// @DnDParent : 52D7C74E
		/// @DnDArgument : "expr" "14"
		/// @DnDArgument : "expr_2" "1"
		/// @DnDArgument : "expr_3" ""Jonathan's Level""
		/// @DnDArgument : "expr_5" ""Jonathan's Level\nUse Arrow Keys to Move\nUse Mouse to Shoot\nPress Space to Begin""
		/// @DnDArgument : "expr_6" "10"
		/// @DnDArgument : "var" "gameState"
		/// @DnDArgument : "var_1" "playerInControl"
		/// @DnDArgument : "var_2" "showInstructions"
		/// @DnDArgument : "var_3" "levelName"
		/// @DnDArgument : "var_4" "rockCount"
		/// @DnDArgument : "var_5" "instructions"
		/// @DnDArgument : "var_6" "rockTarget"
		gameState = 14;
		playerInControl = 0;
		showInstructions = 1;
		levelName = "Jonathan's Level";
		rockCount = 0;
		instructions = "Jonathan's Level\nUse Arrow Keys to Move\nUse Mouse to Shoot\nPress Space to Begin";
		rockTarget = 10;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 43446B7A
		/// @DnDParent : 52D7C74E
		/// @DnDArgument : "expr" ""Asteroids " + string(rockCount) + " / " + string(rockTarget)"
		/// @DnDArgument : "var" "subText"
		subText = "Asteroids " + string(rockCount) + " / " + string(rockTarget);
	
		/// @DnDAction : YoYo Games.Instances.Call_User_Event
		/// @DnDVersion : 1
		/// @DnDHash : 6BAE8D30
		/// @DnDComment : Reset the players position
		/// @DnDParent : 52D7C74E
		/// @DnDArgument : "event" "1"
		event_user(1);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6250438C
		/// @DnDParent : 52D7C74E
		/// @DnDArgument : "xpos" "1100"
		/// @DnDArgument : "ypos" "500"
		/// @DnDArgument : "objectid" "obj_enemyShip"
		instance_create_layer(1100, 500, "Instances", obj_enemyShip);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3D68F992
/// @DnDArgument : "var" "gameState"
/// @DnDArgument : "value" "14"
if(gameState == 14)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7FB95F03
	/// @DnDComment : Lets wait for the player position to be reset
	/// @DnDParent : 3D68F992
	/// @DnDArgument : "var" "resetPosition"
	if(resetPosition == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6332F62B
		/// @DnDParent : 7FB95F03
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "gameState"
		gameState += 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 31E9B453
/// @DnDComment : Jonathan's Level Intro (15)
/// @DnDArgument : "var" "gameState"
/// @DnDArgument : "value" "15"
if(gameState == 15)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 05C13B1F
	/// @DnDParent : 31E9B453
	var l05C13B1F_0;
	l05C13B1F_0 = keyboard_check_pressed(vk_space);
	if (l05C13B1F_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0B4B89D8
		/// @DnDInput : 5
		/// @DnDParent : 05C13B1F
		/// @DnDArgument : "expr" "16"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "expr_3" "5"
		/// @DnDArgument : "expr_4" "5"
		/// @DnDArgument : "var" "gameState"
		/// @DnDArgument : "var_1" "playerInControl"
		/// @DnDArgument : "var_2" "showInstructions"
		/// @DnDArgument : "var_3" "obj_player.maxHealth"
		/// @DnDArgument : "var_4" "obj_player.currentHealth"
		gameState = 16;
		playerInControl = 1;
		showInstructions = 0;
		obj_player.maxHealth = 5;
		obj_player.currentHealth = 5;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 177AB502
/// @DnDComment : Jonathan's Level (16)
/// @DnDArgument : "var" "gameState"
/// @DnDArgument : "value" "16"
if(gameState == 16)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 7BC273D6
	/// @DnDParent : 177AB502
	/// @DnDArgument : "obj" "obj_player"
	/// @DnDSaveInfo : "obj" "obj_player"
	var l7BC273D6_0 = false;
	l7BC273D6_0 = instance_exists(obj_player);
	if(l7BC273D6_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3A5425CE
		/// @DnDParent : 7BC273D6
		/// @DnDArgument : "expr" ""Enemy Health " + string(rockCount) + " / " + string(rockTarget) + "\n" + "Health " + string(obj_player.currentHealth) + " / " + string(obj_player.maxHealth)"
		/// @DnDArgument : "var" "subText"
		subText = "Enemy Health " + string(rockCount) + " / " + string(rockTarget) + "\n" + "Health " + string(obj_player.currentHealth) + " / " + string(obj_player.maxHealth);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 1E97A9E5
	/// @DnDParent : 177AB502
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2F475C98
		/// @DnDParent : 1E97A9E5
		/// @DnDArgument : "expr" ""Enemy Health " + string(rockCount) + " / " + string(rockTarget) + "\n" + "Health - Destroyed""
		/// @DnDArgument : "var" "subText"
		subText = "Enemy Health " + string(rockCount) + " / " + string(rockTarget) + "\n" + "Health - Destroyed";
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 63633D08
	/// @DnDParent : 177AB502
	/// @DnDArgument : "var" "rockCount"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "rockTarget"
	if(rockCount >= rockTarget)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 486C4665
		/// @DnDComment : Remove the rocks
		/// @DnDApplyTo : {obj_rock}
		/// @DnDParent : 63633D08
		with(obj_rock) instance_destroy();
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1B3E57CB
		/// @DnDComment : Move to the next game state$(13_10)Remove Player Control$(13_10)Show the next set of instructions$(13_10)Have the player reset position$(13_10)Reset the rock count
		/// @DnDInput : 7
		/// @DnDParent : 63633D08
		/// @DnDArgument : "expr" "17"
		/// @DnDArgument : "expr_2" "1"
		/// @DnDArgument : "expr_3" ""Next Level""
		/// @DnDArgument : "expr_5" ""Next Level""
		/// @DnDArgument : "expr_6" "10"
		/// @DnDArgument : "var" "gameState"
		/// @DnDArgument : "var_1" "playerInControl"
		/// @DnDArgument : "var_2" "showInstructions"
		/// @DnDArgument : "var_3" "levelName"
		/// @DnDArgument : "var_4" "rockCount"
		/// @DnDArgument : "var_5" "instructions"
		/// @DnDArgument : "var_6" "rockTarget"
		gameState = 17;
		playerInControl = 0;
		showInstructions = 1;
		levelName = "Next Level";
		rockCount = 0;
		instructions = "Next Level";
		rockTarget = 10;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 17E09CBA
		/// @DnDParent : 63633D08
		/// @DnDArgument : "expr" ""Asteroids " + string(rockCount) + " / " + string(rockTarget)"
		/// @DnDArgument : "var" "subText"
		subText = "Asteroids " + string(rockCount) + " / " + string(rockTarget);
	
		/// @DnDAction : YoYo Games.Instances.Call_User_Event
		/// @DnDVersion : 1
		/// @DnDHash : 3514EF9F
		/// @DnDComment : Reset the players position
		/// @DnDParent : 63633D08
		/// @DnDArgument : "event" "1"
		event_user(1);
	}
}