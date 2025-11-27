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

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 66D6C31D
/// @DnDArgument : "var" "global.quiz_active"
/// @DnDArgument : "value" "true"
if(global.quiz_active == true){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 0797044B
	/// @DnDParent : 66D6C31D
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var cam = view_camera[0];$(13_10)$(13_10)// Player world position$(13_10)var px = Object1.x;$(13_10)var py = Object1.y;$(13_10)$(13_10)// Convert to GUI space$(13_10)var gx = camera_get_view_x(cam);$(13_10)var gy = camera_get_view_y(cam);$(13_10)$(13_10)var draw_x = px - gx;$(13_10)var draw_y = py - gy;$(13_10)"
	/// @description Execute Code
	var cam = view_camera[0];
	
	// Player world position
	var px = Object1.x;
	var py = Object1.y;
	
	// Convert to GUI space
	var gx = camera_get_view_x(cam);
	var gy = camera_get_view_y(cam);
	
	var draw_x = px - gx;
	var draw_y = py - gy;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7455B4B2
	/// @DnDInput : 6
	/// @DnDParent : 66D6C31D
	/// @DnDArgument : "expr" "500"
	/// @DnDArgument : "expr_1" "300"
	/// @DnDArgument : "expr_2" "draw_x - w * 0.5"
	/// @DnDArgument : "expr_3" "draw_y - h* 0.5 - 100"
	/// @DnDArgument : "expr_4" "x1 + w"
	/// @DnDArgument : "expr_5" "y1 + h"
	/// @DnDArgument : "var" "w"
	/// @DnDArgument : "var_1" "h"
	/// @DnDArgument : "var_2" "x1"
	/// @DnDArgument : "var_3" "y1"
	/// @DnDArgument : "var_4" "x2"
	/// @DnDArgument : "var_5" "y2"
	w = 500;
	h = 300;
	x1 = draw_x - w * 0.5;
	y1 = draw_y - h* 0.5 - 100;
	x2 = x1 + w;
	y2 = y1 + h;

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 2C570C8D
	/// @DnDParent : 66D6C31D
	/// @DnDArgument : "color" "$FF123960"
	draw_set_colour($FF123960 & $ffffff);
	var l2C570C8D_0=($FF123960 >> 24);
	draw_set_alpha(l2C570C8D_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 68DD8CB7
	/// @DnDParent : 66D6C31D
	/// @DnDArgument : "x1" "x1"
	/// @DnDArgument : "y1" "y1"
	/// @DnDArgument : "x2" "x2"
	/// @DnDArgument : "y2" "y2"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(x1, y1, x2, y2, 0);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 7F85C82A
	/// @DnDParent : 66D6C31D
	draw_set_colour($FFFFFFFF & $ffffff);
	var l7F85C82A_0=($FFFFFFFF >> 24);
	draw_set_alpha(l7F85C82A_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 24824DF6
	/// @DnDParent : 66D6C31D
	/// @DnDArgument : "x" "Object1.x + 0"
	/// @DnDArgument : "y" "Object1.y - 200"
	/// @DnDArgument : "caption" ""Question: " + global.questions[global.quiz_question].text"
	draw_text(Object1.x + 0, Object1.y - 200, string("Question: " + global.questions[global.quiz_question].text) + "");

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 383DFBFA
	/// @DnDParent : 66D6C31D
	/// @DnDArgument : "x" "Object1.x - 100"
	/// @DnDArgument : "y" "Object1.y -100"
	/// @DnDArgument : "caption" ""1. " + global.questions[global.quiz_question].answers[0]"
	draw_text(Object1.x - 100, Object1.y -100, string("1. " + global.questions[global.quiz_question].answers[0]) + "");

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 6958177A
	/// @DnDParent : 66D6C31D
	/// @DnDArgument : "x" "Object1.x + 100"
	/// @DnDArgument : "y" "Object1.y -100"
	/// @DnDArgument : "caption" ""2. " + global.questions[global.quiz_question].answers[1]"
	draw_text(Object1.x + 100, Object1.y -100, string("2. " + global.questions[global.quiz_question].answers[1]) + "");

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 7C74AC2D
	/// @DnDParent : 66D6C31D
	/// @DnDArgument : "x" "Object1.x - 100"
	/// @DnDArgument : "y" "Object1.y +100"
	/// @DnDArgument : "caption" ""3. " + global.questions[global.quiz_question].answers[2]"
	draw_text(Object1.x - 100, Object1.y +100, string("3. " + global.questions[global.quiz_question].answers[2]) + "");

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 2BB29FF7
	/// @DnDParent : 66D6C31D
	/// @DnDArgument : "x" "Object1.x + 100"
	/// @DnDArgument : "y" "Object1.y +100"
	/// @DnDArgument : "caption" ""4. " +  global.questions[global.quiz_question].answers[3]"
	draw_text(Object1.x + 100, Object1.y +100, string("4. " +  global.questions[global.quiz_question].answers[3]) + "");}