/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 68AE92C4
/// @DnDArgument : "font" "fnt_menu"
/// @DnDSaveInfo : "font" "fnt_menu"
draw_set_font(fnt_menu);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 4F02C89D
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 19BB85C6
draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 569A4596
/// @DnDArgument : "caption" "playerScore"
draw_text(0, 0, string(playerScore) + "");

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 5D090F4F
/// @DnDArgument : "font" "fnt_game"
/// @DnDSaveInfo : "font" "fnt_game"
draw_set_font(fnt_game);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 72AF2364
/// @DnDArgument : "halign" "fa_center"
draw_set_halign(fa_center);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 480E1F52
/// @DnDArgument : "x" "500"
/// @DnDArgument : "caption" ""Level: " + levelName"
draw_text(500, 0, string("Level: " + levelName) + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 702709F3
/// @DnDArgument : "x" "500"
/// @DnDArgument : "y" "50"
/// @DnDArgument : "caption" "subText"
draw_text(500, 50, string(subText) + "");

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1C1FAD4F
/// @DnDArgument : "var" "showInstructions"
/// @DnDArgument : "value" "1"
if(showInstructions == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5CBFE253
	/// @DnDParent : 1C1FAD4F
	/// @DnDArgument : "expr" "room_speed / 1000"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "textAlphaTimer"
	textAlphaTimer += room_speed / 1000;

	/// @DnDAction : YoYo Games.Drawing.Set_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 1228AC0E
	/// @DnDParent : 1C1FAD4F
	/// @DnDArgument : "alpha" "(cos(textAlphaTimer) +  1.5) / 2.5"
	draw_set_alpha((cos(textAlphaTimer) +  1.5) / 2.5);

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 62258433
	/// @DnDParent : 1C1FAD4F
	/// @DnDArgument : "halign" "fa_center"
	/// @DnDArgument : "valign" "fa_center"
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 2B9BD0C0
	/// @DnDParent : 1C1FAD4F
	/// @DnDArgument : "x" "500"
	/// @DnDArgument : "y" "500"
	/// @DnDArgument : "caption" "instructions"
	draw_text(500, 500, string(instructions) + "");
}