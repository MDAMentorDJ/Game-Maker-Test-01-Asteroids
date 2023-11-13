/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3597F226
/// @DnDComment : Players current Score$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)How long until next powerup$(13_10)$(13_10)$(13_10)$(13_10)Which level the player is on$(13_10)$(13_10)$(13_10)$(13_10)If the player can control the ship$(13_10)$(13_10)$(13_10)A timer to make the text blink$(13_10)$(13_10)$(13_10)$(13_10)The instruction text for the level$(13_10)$(13_10)$(13_10)$(13_10)If we should show the text$(13_10)$(13_10)$(13_10)The level name$(13_10)$(13_10)$(13_10)$(13_10)What to show below the level name$(13_10)$(13_10)$(13_10)$(13_10)How many rocks the player has defeated$(13_10)$(13_10)$(13_10)$(13_10)How many they need to defeat$(13_10)$(13_10)$(13_10)$(13_10)If the player is in the reset position animation
/// @DnDInput : 12
/// @DnDArgument : "expr_1" "10"
/// @DnDArgument : "expr_2" "3"
/// @DnDArgument : "expr_4" "2"
/// @DnDArgument : "expr_5" ""Use Arrow Keys to Move\nUse Mouse to Shoot\nPress Space to Begin""
/// @DnDArgument : "expr_6" "1"
/// @DnDArgument : "expr_7" ""Basic""
/// @DnDArgument : "expr_8" ""Asteroids 0 / 20""
/// @DnDArgument : "expr_10" "20"
/// @DnDArgument : "var" "playerScore"
/// @DnDArgument : "var_1" "powerup_time"
/// @DnDArgument : "var_2" "gameState"
/// @DnDArgument : "var_3" "playerInControl"
/// @DnDArgument : "var_4" "textAlphaTimer"
/// @DnDArgument : "var_5" "instructions"
/// @DnDArgument : "var_6" "showInstructions"
/// @DnDArgument : "var_7" "levelName"
/// @DnDArgument : "var_8" "subText"
/// @DnDArgument : "var_9" "rockCount"
/// @DnDArgument : "var_10" "rockTarget"
/// @DnDArgument : "var_11" "resetPosition"
playerScore = 0;
powerup_time = 10;
gameState = 3;
playerInControl = 0;
textAlphaTimer = 2;
instructions = "Use Arrow Keys to Move\nUse Mouse to Shoot\nPress Space to Begin";
showInstructions = 1;
levelName = "Basic";
subText = "Asteroids 0 / 20";
rockCount = 0;
rockTarget = 20;
resetPosition = 0;