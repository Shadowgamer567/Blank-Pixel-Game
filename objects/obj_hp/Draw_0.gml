/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4BAA5208
/// @DnDArgument : "var" "global.quiz_active"
/// @DnDArgument : "value" "true"
if(global.quiz_active == true){	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 62C07A34
	/// @DnDParent : 4BAA5208
	exit;}

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 6CDDFEEA
/// @DnDArgument : "font" "Font1"
/// @DnDSaveInfo : "font" "Font1"
draw_set_font(Font1);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 77FB5C63
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 4173B750
/// @DnDArgument : "caption" ""HP: " + string(global.p_hp)"
draw_text(0, 0, string("HP: " + string(global.p_hp)) + "");