/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 6F9F2F3B
draw_self();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0A3DBAB6
/// @DnDArgument : "var" "invincible"
/// @DnDArgument : "value" "true"
if(invincible == true){	/// @DnDAction : YoYo Games.Drawing.Set_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 0B1A6E1B
	/// @DnDParent : 0A3DBAB6
	/// @DnDArgument : "alpha" "0.4"
	draw_set_alpha(0.4);

	/// @DnDAction : YoYo Games.Drawing.Set_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 0DF5BAA5
	/// @DnDParent : 0A3DBAB6
	draw_set_alpha(1);}