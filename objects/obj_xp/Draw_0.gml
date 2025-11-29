/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 09DF0B35
/// @DnDArgument : "expr" "room != Room1"
if(room != Room1){	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 57700614
	/// @DnDParent : 09DF0B35
	exit;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 68C98422
/// @DnDArgument : "var" "global.quiz_active"
/// @DnDArgument : "value" "true"
if(global.quiz_active == true){	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 11F3BCA0
	/// @DnDParent : 68C98422
	exit;}

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 2DE306D6
/// @DnDArgument : "font" "Font1"
/// @DnDSaveInfo : "font" "Font1"
draw_set_font(Font1);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 230D2974
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 516520B9
/// @DnDArgument : "y" "50"
/// @DnDArgument : "caption" ""XP: " + string(global.xp)"
draw_text(0, 50, string("XP: " + string(global.xp)) + "");