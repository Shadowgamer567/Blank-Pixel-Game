/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 19A2B399
/// @DnDInput : 3
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "expr_1" "false"
/// @DnDArgument : "expr_2" "-1"
/// @DnDArgument : "var" "quiz_active"
/// @DnDArgument : "var_1" "game_paused"
/// @DnDArgument : "var_2" "current_question"
quiz_active = false;
game_paused = false;
current_question = -1;

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 48943A01
/// @DnDArgument : "script" "load_questions"
script_execute(load_questions);