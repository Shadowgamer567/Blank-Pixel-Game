/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 19A2B399
/// @DnDInput : 2
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "expr_1" "-1"
/// @DnDArgument : "var" "global.quiz_active"
/// @DnDArgument : "var_1" "global.quiz_question"
global.quiz_active = false;
global.quiz_question = -1;

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 48943A01
/// @DnDArgument : "script" "load_questions"
script_execute(load_questions);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4D1D3399
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)scr_load_questions();$(13_10)show_debug_message("Questions loaded: " + string(array_length(global.questions)));"
/// @description Execute Code
scr_load_questions();
show_debug_message("Questions loaded: " + string(array_length(global.questions)));