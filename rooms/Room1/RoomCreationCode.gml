/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 04E752E3
/// @DnDArgument : "expr" "instance_exists(obj_question)"
if(instance_exists(obj_question)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 57B22EAB
	/// @DnDParent : 04E752E3
	/// @DnDArgument : "expr" "instance_activate_object(obj_question)"
	variable = instance_activate_object(obj_question);}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 28AF2B34
/// @DnDArgument : "expr" "instance_exists(obj_answer1)"
if(instance_exists(obj_answer1)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4203D8B6
	/// @DnDParent : 28AF2B34
	/// @DnDArgument : "expr" "instance_activate_object(obj_answer1)"
	variable = instance_activate_object(obj_answer1);}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 782F8FC4
/// @DnDArgument : "expr" "instance_exists(obj_answer2)"
if(instance_exists(obj_answer2)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0A4CE1D4
	/// @DnDParent : 782F8FC4
	/// @DnDArgument : "expr" "instance_activate_object(obj_answer2)"
	variable = instance_activate_object(obj_answer2);}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1F56455D
/// @DnDArgument : "expr" "instance_exists(obj_answer3)"
if(instance_exists(obj_answer3)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 247AE70A
	/// @DnDParent : 1F56455D
	/// @DnDArgument : "expr" "instance_activate_object(obj_answer3)"
	variable = instance_activate_object(obj_answer3);}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3FA8358E
/// @DnDArgument : "expr" "instance_exists(obj_answer4)"
if(instance_exists(obj_answer4)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5EA174B9
	/// @DnDParent : 3FA8358E
	/// @DnDArgument : "expr" "instance_activate_object(obj_answer4)"
	variable = instance_activate_object(obj_answer4);}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0A70139C
/// @DnDArgument : "expr" "instance_exists(obj_hp)"
if(instance_exists(obj_hp)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5244FEB1
	/// @DnDInput : 2
	/// @DnDParent : 0A70139C
	/// @DnDArgument : "expr" "instance_activate_object(obj_hp)"
	/// @DnDArgument : "expr_1" "true"
	/// @DnDArgument : "var" "obj_hp.variable"
	/// @DnDArgument : "var_1" "obj_hp.visible"
	obj_hp.variable = instance_activate_object(obj_hp);
	obj_hp.visible = true;}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5ED4467D
/// @DnDArgument : "expr" "instance_exists(obj_xp)"
if(instance_exists(obj_xp)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 24BDCEBA
	/// @DnDInput : 2
	/// @DnDParent : 5ED4467D
	/// @DnDArgument : "expr" "instance_activate_object(obj_xp)"
	/// @DnDArgument : "expr_1" "true"
	/// @DnDArgument : "var" "obj_xp.variable"
	/// @DnDArgument : "var_1" "obj_xp.visible"
	obj_xp.variable = instance_activate_object(obj_xp);
	obj_xp.visible = true;}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 395C26F0
/// @DnDArgument : "expr" "instance_exists(Object14)"
if(instance_exists(Object14)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 237A7677
	/// @DnDParent : 395C26F0
	/// @DnDArgument : "expr" "instance_activate_object(Object14)"
	variable = instance_activate_object(Object14);}