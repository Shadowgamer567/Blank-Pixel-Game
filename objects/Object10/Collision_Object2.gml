/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5A2208FA
/// @DnDArgument : "expr" "hp - other.damage"
/// @DnDArgument : "var" "hp"
hp = hp - other.damage;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7CE2D291
/// @DnDArgument : "expr" "hp <= 0"
if(hp <= 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5927B5F5
	/// @DnDParent : 7CE2D291
	instance_destroy();}