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
	/// @DnDArgument : "var" "global.xp"
	global.xp += 100;}

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
/// @DnDArgument : "expr" "global.xp >= lvl_up && lvl_up_pending == false && global.quiz_active == false"
if(global.xp >= lvl_up && lvl_up_pending == false && global.quiz_active == false){	/// @DnDAction : YoYo Games.Common.Variable
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
	}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5DBAAD06
/// @DnDArgument : "var" "invincible"
/// @DnDArgument : "value" "true"
if(invincible == true){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 56CA015F
	/// @DnDParent : 5DBAAD06
	/// @DnDArgument : "expr" "inv_timer - 1"
	/// @DnDArgument : "var" "inv_timer"
	inv_timer = inv_timer - 1;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4D76AF97
	/// @DnDParent : 5DBAAD06
	/// @DnDArgument : "expr" "inv_timer <= 0"
	if(inv_timer <= 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6B00987D
		/// @DnDParent : 4D76AF97
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "invincible"
		invincible = false;}}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4900E54F
/// @DnDArgument : "expr" "global.p_hp <= 0 && dead == false"
if(global.p_hp <= 0 && dead == false){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2DE2C0EA
	/// @DnDParent : 4900E54F
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "dead"
	dead = true;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 702E458A
	/// @DnDParent : 4900E54F
	/// @DnDArgument : "steps" "60"
	alarm_set(0, 60);}