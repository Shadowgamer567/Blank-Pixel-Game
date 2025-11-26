/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0222A39D
/// @DnDComment : 
/// @DnDArgument : "funcName" "start_quiz"
function start_quiz() {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6827B548
	/// @DnDInput : 3
	/// @DnDParent : 0222A39D
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "expr_1" "true"
	/// @DnDArgument : "expr_2" "irandom(array_length(global.questions) - 1)"
	/// @DnDArgument : "var" "quiz_active"
	/// @DnDArgument : "var_1" "game_paused"
	/// @DnDArgument : "var_2" "current_question"
	quiz_active = true;
	game_paused = true;
	current_question = irandom(array_length(global.questions) - 1);}