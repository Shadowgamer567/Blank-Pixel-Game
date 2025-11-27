/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2B29561C
/// @DnDArgument : "var" "global.quiz_active"
/// @DnDArgument : "value" "true"
if(global.quiz_active == true){	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 1C5D507F
	/// @DnDParent : 2B29561C
	exit;}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 6FA699D0
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "Object2"
/// @DnDSaveInfo : "objectid" "Object2"
instance_create_layer(x + 0, y + 0, "Instances", Object2);

/// @DnDAction : YoYo Games.Instances.Get_Alarm
/// @DnDVersion : 1
/// @DnDHash : 4DD1A122
/// @DnDArgument : "var_temp" "1"
var variable = alarm_get(0);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0C03A0E7
/// @DnDArgument : "expr" "variable <= 0"
if(variable <= 0){	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 4258B9AA
	/// @DnDParent : 0C03A0E7
	/// @DnDArgument : "steps_relative" "1"
	alarm_set(0, 30 + alarm_get(0));}