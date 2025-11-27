/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0F2BC7FC
/// @DnDArgument : "var" "global.quiz_active"
/// @DnDArgument : "value" "false"
if(global.quiz_active == false){	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 13134585
	/// @DnDParent : 0F2BC7FC
	exit;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 51923B86
/// @DnDArgument : "var" "global.quiz_active"
/// @DnDArgument : "value" "true"
if(global.quiz_active == true){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 377DA602
	/// @DnDParent : 51923B86
	/// @DnDArgument : "key" "ord("1")"
	var l377DA602_0;l377DA602_0 = keyboard_check_pressed(ord("1"));if (l377DA602_0){	/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 4B6C5F66
		/// @DnDParent : 377DA602
		/// @DnDArgument : "script" "scr_check_answer"
		/// @DnDArgument : "arg" "0"
		/// @DnDSaveInfo : "script" "scr_check_answer"
		script_execute(scr_check_answer, 0);}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 7F6CDF36
	/// @DnDParent : 51923B86
	/// @DnDArgument : "key" "ord("2")"
	var l7F6CDF36_0;l7F6CDF36_0 = keyboard_check_pressed(ord("2"));if (l7F6CDF36_0){	/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 577C540D
		/// @DnDParent : 7F6CDF36
		/// @DnDArgument : "script" "scr_check_answer"
		/// @DnDArgument : "arg" "1"
		/// @DnDSaveInfo : "script" "scr_check_answer"
		script_execute(scr_check_answer, 1);}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 3C14D155
	/// @DnDParent : 51923B86
	/// @DnDArgument : "key" "ord("3")"
	var l3C14D155_0;l3C14D155_0 = keyboard_check_pressed(ord("3"));if (l3C14D155_0){	/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 4F9A1B09
		/// @DnDParent : 3C14D155
		/// @DnDArgument : "script" "scr_check_answer"
		/// @DnDArgument : "arg" "2"
		/// @DnDSaveInfo : "script" "scr_check_answer"
		script_execute(scr_check_answer, 2);}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 7C8077D9
	/// @DnDParent : 51923B86
	/// @DnDArgument : "key" "ord("4")"
	var l7C8077D9_0;l7C8077D9_0 = keyboard_check_pressed(ord("4"));if (l7C8077D9_0){	/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 13558BE8
		/// @DnDParent : 7C8077D9
		/// @DnDArgument : "script" "scr_check_answer"
		/// @DnDArgument : "arg" "3"
		/// @DnDSaveInfo : "script" "scr_check_answer"
		script_execute(scr_check_answer, 3);}}