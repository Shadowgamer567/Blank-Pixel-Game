/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1FDECF97
/// @DnDArgument : "var" "quiz_active"
/// @DnDArgument : "value" "true"
if(quiz_active == true){	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 68DD8CB7
	/// @DnDParent : 1FDECF97
	/// @DnDArgument : "x1" "Object1.x + 500"
	/// @DnDArgument : "y1" "Object1.y + 300"
	/// @DnDArgument : "x2" "Object1.x + 500"
	/// @DnDArgument : "y2" "Object1.y + 300"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(Object1.x + 500, Object1.y + 300, Object1.x + 500, Object1.y + 300, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 24824DF6
	/// @DnDParent : 1FDECF97
	/// @DnDArgument : "x" "Object1.x + 0"
	/// @DnDArgument : "y" "Object1.y + 200"
	/// @DnDArgument : "var" "global.questions[current_question].text"
	draw_text(Object1.x + 0, Object1.y + 200, string("Caption: ") + string(global.questions[current_question].text));

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 0906957F
	/// @DnDParent : 1FDECF97
	/// @DnDArgument : "times" "4"
	repeat(4){	/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 383DFBFA
		/// @DnDParent : 0906957F
		/// @DnDArgument : "var" "global.questions[current_question].answers[i]"
		draw_text(0, 0, string("Caption: ") + string(global.questions[current_question].answers[i]));}}