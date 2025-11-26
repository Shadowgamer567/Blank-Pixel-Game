/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 15964BBD
/// @DnDArgument : "var" "obj_quiz_controller.game_paused"
/// @DnDArgument : "value" "true"
if(obj_quiz_controller.game_paused == true){	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 2A7AD7DA
	/// @DnDParent : 15964BBD
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
/// @DnDArgument : "expr" "xp >= lvl_up"
if(xp >= lvl_up){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2B638E81
	/// @DnDInput : 3
	/// @DnDParent : 2FC2119E
	/// @DnDArgument : "expr" "lvl + 1"
	/// @DnDArgument : "expr_1" "lvl_up * .25"
	/// @DnDArgument : "expr_2" "lvl_up + variable_lvl_up"
	/// @DnDArgument : "var" "lvl"
	/// @DnDArgument : "var_1" "variable_lvl_up"
	/// @DnDArgument : "var_2" "lvl_up"
	lvl = lvl + 1;
	variable_lvl_up = lvl_up * .25;
	lvl_up = lvl_up + variable_lvl_up;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 3861F6EB
	/// @DnDParent : 2FC2119E
	/// @DnDArgument : "expr" "lvl + 1"
	if(lvl + 1){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 123ADA23
		/// @DnDInput : 2
		/// @DnDParent : 3861F6EB
		/// @DnDArgument : "expr_1" "global.start_quiz = true"
		/// @DnDArgument : "var" "xp"
		/// @DnDArgument : "var_1" "quiz_start"
		xp = 0;
		quiz_start = global.start_quiz = true;
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 5E3027C8
		/// @DnDParent : 3861F6EB
		/// @DnDArgument : "script" "start_quiz"
		script_execute(start_quiz);}}

/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 609BF4E1
/// @DnDArgument : "hor" "0"
/// @DnDArgument : "ver" "0"
move_wrap(0, 0, 0);