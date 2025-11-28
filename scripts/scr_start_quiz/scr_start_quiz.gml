/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0222A39D
/// @DnDComment : 
/// @DnDArgument : "funcName" "start_quiz"
function start_quiz() {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6827B548
	/// @DnDInput : 2
	/// @DnDParent : 0222A39D
	/// @DnDArgument : "expr" "irandom(array_length(global.questions) - 1)"
	/// @DnDArgument : "expr_1" "true"
	/// @DnDArgument : "var" "current_question"
	/// @DnDArgument : "var_1" "global.quiz_active"
	current_question = irandom(array_length(global.questions) - 1);
	global.quiz_active = true;

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 02E77D36
	/// @DnDParent : 0222A39D
	/// @DnDArgument : "code" "// Select question FIRST$(13_10)global.quiz_question = irandom(array_length(global.questions) - 1);$(13_10)$(13_10)// THEN activate quiz$(13_10)global.quiz_active = true;$(13_10)$(13_10)	with (Object14) visible = true;$(13_10)    with (obj_question) visible = true;$(13_10)    with (obj_answer1) visible = true;$(13_10)    with (obj_answer2) visible = true;$(13_10)    with (obj_answer3) visible = true;$(13_10)    with (obj_answer4) visible = true;$(13_10)	with (obj_hp) visible = false;$(13_10)	with (obj_xp) visible = false;$(13_10)$(13_10)"
	// Select question FIRST
	global.quiz_question = irandom(array_length(global.questions) - 1);
	
	// THEN activate quiz
	global.quiz_active = true;
	
		with (Object14) visible = true;
	    with (obj_question) visible = true;
	    with (obj_answer1) visible = true;
	    with (obj_answer2) visible = true;
	    with (obj_answer3) visible = true;
	    with (obj_answer4) visible = true;
		with (obj_hp) visible = false;
		with (obj_xp) visible = false;}