/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 144F6CC7
/// @DnDComment : 
/// @DnDArgument : "funcName" "scr_check_answer"
function scr_check_answer() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 6B9846C9
	/// @DnDParent : 144F6CC7
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)function scr_check_answer() {$(13_10)    var choice = argument0;$(13_10)    var qidx = global.quiz_question;$(13_10)    if (qidx < 0 || qidx >= array_length(global.questions)) {$(13_10)        global.quiz_active = false;$(13_10)        return;$(13_10)    }$(13_10)$(13_10)    var correct = global.questions[qidx].correct;$(13_10)$(13_10)    if (choice == correct) {$(13_10)        // correct: reward here$(13_10)        show_debug_message("Correct!");$(13_10)        // e.g. give XP, stat, etc.$(13_10)    } else {$(13_10)        show_debug_message("Wrong!");$(13_10)        // optional penalty or message$(13_10)    }$(13_10)	$(13_10)    // End quiz$(13_10)    global.quiz_active = false;$(13_10)    // optional: clear current question$(13_10)    global.quiz_question = -1;$(13_10)}$(13_10)"
	/// @description Execute Code
	function scr_check_answer() {
	    var choice = argument0;
	    var qidx = global.quiz_question;
	    if (qidx < 0 || qidx >= array_length(global.questions)) {
	        global.quiz_active = false;
	        return;
	    }
	
	    var correct = global.questions[qidx].correct;
	
	    if (choice == correct) {
	        // correct: reward here
	        show_debug_message("Correct!");
	        // e.g. give XP, stat, etc.
	    } else {
	        show_debug_message("Wrong!");
	        // optional penalty or message
	    }
		
	    // End quiz
	    global.quiz_active = false;
	    // optional: clear current question
	    global.quiz_question = -1;
	}}