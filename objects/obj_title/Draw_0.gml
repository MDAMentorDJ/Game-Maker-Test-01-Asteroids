/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 7E868CC7
/// @DnDArgument : "font" "fnt_title"
/// @DnDSaveInfo : "font" "fnt_title"
draw_set_font(fnt_title);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 49ECADF6
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 61B583B3
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Microchip Innov8ors\nAsteroid Blast""
draw_text(x + 0, y + 0, string("Microchip Innov8ors\nAsteroid Blast") + "");

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 738CB128
draw_set_halign(fa_left);
draw_set_valign(fa_top);