/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 7F26706D
/// @DnDArgument : "key" "ord("M")"
var l7F26706D_0;l7F26706D_0 = keyboard_check_pressed(ord("M"));if (l7F26706D_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 569FE2E4
	/// @DnDParent : 7F26706D
	/// @DnDArgument : "expr" "100"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "xp"
	xp += 100;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 53BA144D
/// @DnDArgument : "var" "global.quiz_active"
/// @DnDArgument : "value" "true"
if(global.quiz_active == true){	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 7C69D4AD
	/// @DnDParent : 53BA144D
	exit;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 511597DE
/// @DnDArgument : "key" "vk_right"
var l511597DE_0;l511597DE_0 = keyboard_check(vk_right);if (l511597DE_0){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 398106B5
	/// @DnDParent : 511597DE
	/// @DnDArgument : "value" "4.5"
	/// @DnDArgument : "value_relative" "1"
	x += 4.5;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 40609348
/// @DnDArgument : "key" "vk_left"
var l40609348_0;l40609348_0 = keyboard_check(vk_left);if (l40609348_0){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 2BFB9133
	/// @DnDParent : 40609348
	/// @DnDArgument : "value" "-4.5"
	/// @DnDArgument : "value_relative" "1"
	x += -4.5;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 35FE8287
/// @DnDArgument : "key" "vk_up"
var l35FE8287_0;l35FE8287_0 = keyboard_check(vk_up);if (l35FE8287_0){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 76A7D628
	/// @DnDParent : 35FE8287
	/// @DnDArgument : "value" "-4.5"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "instvar" "1"
	y += -4.5;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 2417285F
/// @DnDArgument : "key" "vk_down"
var l2417285F_0;l2417285F_0 = keyboard_check(vk_down);if (l2417285F_0){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 3538AB08
	/// @DnDParent : 2417285F
	/// @DnDArgument : "value" "4.5"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "instvar" "1"
	y += 4.5;}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2FC2119E
/// @DnDArgument : "expr" "xp >= lvl_up && lvl_up_pending == false && global.quiz_active == false"
if(xp >= lvl_up && lvl_up_pending == false && global.quiz_active == false){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2B638E81
	/// @DnDInput : 4
	/// @DnDParent : 2FC2119E
	/// @DnDArgument : "expr" "lvl + 1"
	/// @DnDArgument : "expr_1" "lvl_up * .25"
	/// @DnDArgument : "expr_2" "lvl_up + variable_lvl_up"
	/// @DnDArgument : "expr_3" "true"
	/// @DnDArgument : "var" "lvl"
	/// @DnDArgument : "var_1" "variable_lvl_up"
	/// @DnDArgument : "var_2" "lvl_up"
	/// @DnDArgument : "var_3" "lvl_up_pending"
	lvl = lvl + 1;
	variable_lvl_up = lvl_up * .25;
	lvl_up = lvl_up + variable_lvl_up;
	lvl_up_pending = true;

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 6FE08055
	/// @DnDApplyTo : {obj_quiz_controller}
	/// @DnDParent : 2FC2119E
	with(obj_quiz_controller) {
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 5E3027C8
		/// @DnDParent : 6FE08055
		/// @DnDArgument : "script" "start_quiz"
		script_execute(start_quiz);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 146DF53C
		/// @DnDParent : 6FE08055
		/// @DnDArgument : "expr" "show_debug_message("QUIZ ACTIVATED");"
		variable = show_debug_message("QUIZ ACTIVATED");;
	}}

/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 609BF4E1
/// @DnDArgument : "hor" "0"
/// @DnDArgument : "ver" "0"
move_wrap(0, 0, 0);