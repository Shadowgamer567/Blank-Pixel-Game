/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 03C1B1FD
/// @DnDArgument : "expr" "other.hp - damage"
/// @DnDArgument : "var" "other.hp"
other.hp = other.hp - damage;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 44FE136D
/// @DnDArgument : "expr" "other.hp <= 0"
if(other.hp <= 0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 52BC3195
	/// @DnDApplyTo : {Object1}
	/// @DnDParent : 44FE136D
	/// @DnDArgument : "spriteind" "Sprite27"
	/// @DnDSaveInfo : "spriteind" "Sprite27"
	with(Object1) {
	sprite_index = Sprite27;
	image_index = 0;
	}}