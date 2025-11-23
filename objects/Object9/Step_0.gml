/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 24604CBD
/// @DnDInput : 7
/// @DnDArgument : "expr" "point_direction(Object1.x, Object1.y, mouse_x, mouse_y)"
/// @DnDArgument : "expr_1" "Object1.x + lengthdir_x(radius, angle)"
/// @DnDArgument : "expr_2" "Object1.y + lengthdir_y(radius, angle)"
/// @DnDArgument : "expr_3" "point_direction(x, y, mouse_x, mouse_y) - 90"
/// @DnDArgument : "expr_4" "point_direction(x, y, mouse_x, mouse_y)"
/// @DnDArgument : "expr_5" "point_direction(Object1.x, Object1.y, x, y)"
/// @DnDArgument : "expr_6" "angle_difference(aim, back)"
/// @DnDArgument : "var" "angle"
/// @DnDArgument : "var_1" "x"
/// @DnDArgument : "var_2" "y"
/// @DnDArgument : "var_3" "image_angle"
/// @DnDArgument : "var_4" "aim"
/// @DnDArgument : "var_5" "back"
/// @DnDArgument : "var_6" "d"
angle = point_direction(Object1.x, Object1.y, mouse_x, mouse_y);
x = Object1.x + lengthdir_x(radius, angle);
y = Object1.y + lengthdir_y(radius, angle);
image_angle = point_direction(x, y, mouse_x, mouse_y) - 90;
aim = point_direction(x, y, mouse_x, mouse_y);
back = point_direction(Object1.x, Object1.y, x, y);
d = angle_difference(aim, back);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7617EF71
/// @DnDArgument : "expr" "abs(d) > 90"
if(abs(d) > 90){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1F0B901E
	/// @DnDParent : 7617EF71
	/// @DnDArgument : "expr" "back + sign(d) * 90;"
	/// @DnDArgument : "var" "aim"
	aim = back + sign(d) * 90;;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 20A71C76
	/// @DnDParent : 7617EF71
	/// @DnDArgument : "expr" "aim - 360"
	/// @DnDArgument : "var" "image_angle"
	image_angle = aim - 360;}