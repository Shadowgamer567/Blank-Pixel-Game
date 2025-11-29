/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 766BC7FF
/// @DnDArgument : "expr" "global.room_restart "
if(global.room_restart ){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1AC3061C
	/// @DnDParent : 766BC7FF
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "global.room_restart"
	global.room_restart = false;

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 2002C9C8
	/// @DnDParent : 766BC7FF
	/// @DnDArgument : "room" "Room1"
	/// @DnDSaveInfo : "room" "Room1"
	room_goto(Room1);}