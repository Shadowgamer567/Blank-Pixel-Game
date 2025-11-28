/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7C27B7BB
/// @DnDArgument : "var" "global.quiz_active"
/// @DnDArgument : "value" "false"
if(global.quiz_active == false){	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 430B6B93
	/// @DnDParent : 7C27B7BB
	exit;}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3DA7682A
/// @DnDArgument : "expr" "global.quiz_question < 0"
if(global.quiz_question < 0){	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 505125CB
	/// @DnDParent : 3DA7682A
	exit;}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7455B4B2
/// @DnDInput : 6
/// @DnDArgument : "expr" "700"
/// @DnDArgument : "expr_1" "300"
/// @DnDArgument : "expr_2" "Object1.x - w * 0.5"
/// @DnDArgument : "expr_3" "Object1.y - h * 0.5 "
/// @DnDArgument : "expr_4" "x1 + w"
/// @DnDArgument : "expr_5" "y1 + h"
/// @DnDArgument : "var" "w"
/// @DnDArgument : "var_1" "h"
/// @DnDArgument : "var_2" "x1"
/// @DnDArgument : "var_3" "y1"
/// @DnDArgument : "var_4" "x2"
/// @DnDArgument : "var_5" "y2"
w = 700;
h = 300;
x1 = Object1.x - w * 0.5;
y1 = Object1.y - h * 0.5 ;
x2 = x1 + w;
y2 = y1 + h;

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 2C570C8D
/// @DnDArgument : "color" "$FF123960"
draw_set_colour($FF123960 & $ffffff);
var l2C570C8D_0=($FF123960 >> 24);
draw_set_alpha(l2C570C8D_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alpha
/// @DnDVersion : 1
/// @DnDHash : 14F3A242
/// @DnDArgument : "alpha" "0.6"
draw_set_alpha(0.6);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 68DD8CB7
/// @DnDArgument : "x1" "x1 + 100"
/// @DnDArgument : "y1" "y1"
/// @DnDArgument : "x2" "x2 "
/// @DnDArgument : "y2" "y2"
/// @DnDArgument : "fill" "1"
draw_rectangle(x1 + 100, y1, x2 , y2, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 7F85C82A
draw_set_colour($FFFFFFFF & $ffffff);
var l7F85C82A_0=($FFFFFFFF >> 24);
draw_set_alpha(l7F85C82A_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 24824DF6
/// @DnDArgument : "x" "Object1.x - 50"
/// @DnDArgument : "y" "Object1.y - 100"
/// @DnDArgument : "caption" ""Question: " + global.questions[global.quiz_question].text"
draw_text(Object1.x - 50, Object1.y - 100, string("Question: " + global.questions[global.quiz_question].text) + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 383DFBFA
/// @DnDArgument : "x" "Object1.x - 100"
/// @DnDArgument : "y" "Object1.y -50"
/// @DnDArgument : "caption" ""1. " + global.questions[global.quiz_question].answers[0]"
draw_text(Object1.x - 100, Object1.y -50, string("1. " + global.questions[global.quiz_question].answers[0]) + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 6958177A
/// @DnDArgument : "x" "Object1.x + 100"
/// @DnDArgument : "y" "Object1.y -50"
/// @DnDArgument : "caption" ""2. " + global.questions[global.quiz_question].answers[1]"
draw_text(Object1.x + 100, Object1.y -50, string("2. " + global.questions[global.quiz_question].answers[1]) + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 7C74AC2D
/// @DnDArgument : "x" "Object1.x - 100"
/// @DnDArgument : "y" "Object1.y +50"
/// @DnDArgument : "caption" ""3. " + global.questions[global.quiz_question].answers[2]"
draw_text(Object1.x - 100, Object1.y +50, string("3. " + global.questions[global.quiz_question].answers[2]) + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 2BB29FF7
/// @DnDArgument : "x" "Object1.x + 100"
/// @DnDArgument : "y" "Object1.y +50"
/// @DnDArgument : "caption" ""4. " +  global.questions[global.quiz_question].answers[3]"
draw_text(Object1.x + 100, Object1.y +50, string("4. " +  global.questions[global.quiz_question].answers[3]) + "");