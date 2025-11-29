/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 46A1A128
/// @DnDArgument : "var" "Object1.invincible"
/// @DnDArgument : "value" "false"
if(Object1.invincible == false){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 118EAF09
	/// @DnDParent : 46A1A128
	/// @DnDArgument : "expr" "global.p_hp - damage"
	/// @DnDArgument : "var" "global.p_hp"
	global.p_hp = global.p_hp - damage;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 306A56ED
	/// @DnDInput : 2
	/// @DnDParent : 46A1A128
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "expr_1" "room_speed"
	/// @DnDArgument : "var" "other.invincible"
	/// @DnDArgument : "var_1" "other.inv_timer"
	other.invincible = true;
	other.inv_timer = room_speed;}