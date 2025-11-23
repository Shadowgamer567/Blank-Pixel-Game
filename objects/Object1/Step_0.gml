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

/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 609BF4E1
/// @DnDArgument : "hor" "0"
/// @DnDArgument : "ver" "0"
move_wrap(0, 0, 0);