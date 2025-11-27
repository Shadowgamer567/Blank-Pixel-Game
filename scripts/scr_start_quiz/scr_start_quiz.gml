/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0222A39D
/// @DnDComment : 
/// @DnDArgument : "funcName" "start_quiz"
function start_quiz() {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6827B548
	/// @DnDInput : 4
	/// @DnDParent : 0222A39D
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "expr_1" "true"
	/// @DnDArgument : "expr_2" "irandom(array_length(global.questions) - 1)"
	/// @DnDArgument : "expr_3" "show_debug_message("Script was ran")"
	/// @DnDArgument : "var" "global.quiz_active"
	/// @DnDArgument : "var_1" "game_paused"
	/// @DnDArgument : "var_2" "current_question"
	global.quiz_active = true;
	game_paused = true;
	current_question = irandom(array_length(global.questions) - 1);
	variable = show_debug_message("Script was ran");

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 02E77D36
	/// @DnDParent : 0222A39D
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)function scr_start_quiz() {$(13_10)    if (array_length(global.questions) == 0) return;$(13_10)    global.quiz_active = true;$(13_10)    global.quiz_question = irandom(array_length(global.questions) - 1);$(13_10)    // optional: remove chosen question to avoid repeats:$(13_10)    // array_delete(global.questions, global.quiz_question, 1);$(13_10)}$(13_10)"
	/// @description Execute Code
	function scr_start_quiz() {
	    if (array_length(global.questions) == 0) return;
	    global.quiz_active = true;
	    global.quiz_question = irandom(array_length(global.questions) - 1);
	    // optional: remove chosen question to avoid repeats:
	    // array_delete(global.questions, global.quiz_question, 1);
	}}