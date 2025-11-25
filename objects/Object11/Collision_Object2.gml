/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3531D3AD
/// @DnDArgument : "expr" "hp - other.damage"
/// @DnDArgument : "var" "hp"
hp = hp - other.damage;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 643E548A
/// @DnDArgument : "expr" "hp <= 0"
if(hp <= 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 30950CAF
	/// @DnDParent : 643E548A
	instance_destroy();}