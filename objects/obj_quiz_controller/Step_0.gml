/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 51923B86
/// @DnDArgument : "var" "quiz_active"
/// @DnDArgument : "value" "true"
if(quiz_active == true){	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 385413A2
	/// @DnDParent : 51923B86
	/// @DnDArgument : "times" "4"
	repeat(4){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 377DA602
		/// @DnDParent : 385413A2
		/// @DnDArgument : "key" "ord("1")"
		var l377DA602_0;l377DA602_0 = keyboard_check_pressed(ord("1"));if (l377DA602_0){	/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 036D9569
			/// @DnDParent : 377DA602
			/// @DnDArgument : "expr" "global.questions[current_question].answers[i] == correct"
			if(global.questions[current_question].answers[i] == correct){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3D8B39BA
				/// @DnDInput : 2
				/// @DnDParent : 036D9569
				/// @DnDArgument : "expr" "false"
				/// @DnDArgument : "expr_1" "false"
				/// @DnDArgument : "var" "quiz_active"
				/// @DnDArgument : "var_1" "game_paused"
				quiz_active = false;
				game_paused = false;}}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 7F6CDF36
		/// @DnDParent : 385413A2
		/// @DnDArgument : "key" "ord("2")"
		var l7F6CDF36_0;l7F6CDF36_0 = keyboard_check_pressed(ord("2"));if (l7F6CDF36_0){	/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 2E2901E5
			/// @DnDParent : 7F6CDF36
			/// @DnDArgument : "expr" "global.questions[current_question].answers[i] == correct"
			if(global.questions[current_question].answers[i] == correct){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4B5B7BC1
				/// @DnDInput : 2
				/// @DnDParent : 2E2901E5
				/// @DnDArgument : "expr" "false"
				/// @DnDArgument : "expr_1" "false"
				/// @DnDArgument : "var" "quiz_active"
				/// @DnDArgument : "var_1" "game_paused"
				quiz_active = false;
				game_paused = false;}}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 3C14D155
		/// @DnDParent : 385413A2
		/// @DnDArgument : "key" "ord("3")"
		var l3C14D155_0;l3C14D155_0 = keyboard_check_pressed(ord("3"));if (l3C14D155_0){	/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 62B2A46B
			/// @DnDParent : 3C14D155
			/// @DnDArgument : "expr" "global.questions[current_question].answers[i] == correct"
			if(global.questions[current_question].answers[i] == correct){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6C64C643
				/// @DnDInput : 2
				/// @DnDParent : 62B2A46B
				/// @DnDArgument : "expr" "false"
				/// @DnDArgument : "expr_1" "false"
				/// @DnDArgument : "var" "quiz_active"
				/// @DnDArgument : "var_1" "game_paused"
				quiz_active = false;
				game_paused = false;}}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 7C8077D9
		/// @DnDParent : 385413A2
		/// @DnDArgument : "key" "ord("4")"
		var l7C8077D9_0;l7C8077D9_0 = keyboard_check_pressed(ord("4"));if (l7C8077D9_0){	/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 70D6D51D
			/// @DnDParent : 7C8077D9
			/// @DnDArgument : "expr" "global.questions[current_question].answers[i] == correct"
			if(global.questions[current_question].answers[i] == correct){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5456F634
				/// @DnDInput : 2
				/// @DnDParent : 70D6D51D
				/// @DnDArgument : "expr" "false"
				/// @DnDArgument : "expr_1" "false"
				/// @DnDArgument : "var" "quiz_active"
				/// @DnDArgument : "var_1" "game_paused"
				quiz_active = false;
				game_paused = false;}}}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E582667
	/// @DnDParent : 51923B86
	/// @DnDArgument : "expr" "show_debug_message("Quiz Status: " + quiz_active)"
	variable = show_debug_message("Quiz Status: " + quiz_active);}