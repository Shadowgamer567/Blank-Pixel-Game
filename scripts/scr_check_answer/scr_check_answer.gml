/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 144F6CC7
/// @DnDComment : 
/// @DnDArgument : "funcName" "scr_check_answer"
function scr_check_answer() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 6B9846C9
	/// @DnDParent : 144F6CC7
	/// @DnDArgument : "code" "var choice = argument0;$(13_10)var qidx = global.quiz_question;$(13_10)$(13_10)if (qidx < 0 || qidx >= array_length(global.questions)) {$(13_10)    global.quiz_active = false;$(13_10)    global.quiz_question = -1;$(13_10)    exit;$(13_10)}$(13_10)$(13_10)var correct = global.questions[qidx].correct;$(13_10)$(13_10)if (choice == correct) {$(13_10)    show_debug_message("Correct!");$(13_10)} else {$(13_10)    show_debug_message("Wrong!");$(13_10)}$(13_10)$(13_10)// END QUIZ$(13_10)global.quiz_active = false;$(13_10)global.quiz_question = -1;$(13_10)with (Object1){$(13_10)	xp = 0$(13_10)	lvl_up_pending = false$(13_10)}"
	var choice = argument0;
	var qidx = global.quiz_question;
	
	if (qidx < 0 || qidx >= array_length(global.questions)) {
	    global.quiz_active = false;
	    global.quiz_question = -1;
	    exit;
	}
	
	var correct = global.questions[qidx].correct;
	
	if (choice == correct) {
	    show_debug_message("Correct!");
	} else {
	    show_debug_message("Wrong!");
	}
	
	// END QUIZ
	global.quiz_active = false;
	global.quiz_question = -1;
	with (Object1){
		xp = 0
		lvl_up_pending = false
	}}