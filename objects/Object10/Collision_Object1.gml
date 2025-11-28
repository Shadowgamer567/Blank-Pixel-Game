/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 118EAF09
/// @DnDArgument : "expr" "global.p_hp - damage"
/// @DnDArgument : "var" "global.p_hp"
global.p_hp = global.p_hp - damage;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 668B2082
/// @DnDArgument : "expr" "global.p_hp <= 0"
if(global.p_hp <= 0){	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 62FCBCA6
	/// @DnDParent : 668B2082
	room_restart();}