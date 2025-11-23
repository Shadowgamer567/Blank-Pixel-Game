/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 475714A5
/// @DnDInput : 17
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_1" "15"
/// @DnDArgument : "expr_2" "15 * room_speed"
/// @DnDArgument : "expr_4" "room_speed * 3"
/// @DnDArgument : "expr_7" "room_speed * 10"
/// @DnDArgument : "expr_9" "12"
/// @DnDArgument : "expr_14" "Object1.x"
/// @DnDArgument : "expr_15" "Object1.y"
/// @DnDArgument : "expr_16" "500"
/// @DnDArgument : "var" "cluster_size"
/// @DnDArgument : "var_1" "cluster_max"
/// @DnDArgument : "var_2" "cluster_increase_time"
/// @DnDArgument : "var_3" "cluster_timer"
/// @DnDArgument : "var_4" "spawn_interval"
/// @DnDArgument : "var_5" "spawn_timer"
/// @DnDArgument : "var_6" "difficulty_timer"
/// @DnDArgument : "var_7" "difficulty_increase_time"
/// @DnDArgument : "var_8" "cluster_count"
/// @DnDArgument : "var_9" "cluster_count_max"
/// @DnDArgument : "var_10" "cx"
/// @DnDArgument : "var_11" "cy"
/// @DnDArgument : "var_12" "temp_cx"
/// @DnDArgument : "var_13" "temp_cy"
/// @DnDArgument : "var_14" "px"
/// @DnDArgument : "var_15" "py"
/// @DnDArgument : "var_16" "safe_distance"
cluster_size = 1;
cluster_max = 15;
cluster_increase_time = 15 * room_speed;
cluster_timer = 0;
spawn_interval = room_speed * 3;
spawn_timer = 0;
difficulty_timer = 0;
difficulty_increase_time = room_speed * 10;
cluster_count = 0;
cluster_count_max = 12;
cx = 0;
cy = 0;
temp_cx = 0;
temp_cy = 0;
px = Object1.x;
py = Object1.y;
safe_distance = 500;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 428BEBFD
/// @DnDInput : 2
/// @DnDArgument : "var" "temp_starting_cluster_count"
/// @DnDArgument : "value" "6"
/// @DnDArgument : "var_1" "temp_starting_cluster"
/// @DnDArgument : "value_1" "3"
var temp_starting_cluster_count = 6;
var temp_starting_cluster = 3;

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 251E460C
/// @DnDArgument : "times" "temp_starting_cluster_count"
repeat(temp_starting_cluster_count){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2633CBB8
	/// @DnDInput : 2
	/// @DnDParent : 251E460C
	/// @DnDArgument : "expr" "random(room_width)"
	/// @DnDArgument : "expr_1" "random(room_height)"
	/// @DnDArgument : "var" "cx"
	/// @DnDArgument : "var_1" "cy"
	cx = random(room_width);
	cy = random(room_height);

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 7B149D58
	/// @DnDParent : 251E460C
	/// @DnDArgument : "times" "temp_starting_cluster"
	repeat(temp_starting_cluster){	/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0D129720
		/// @DnDInput : 2
		/// @DnDParent : 7B149D58
		/// @DnDArgument : "var" "temp_ox"
		/// @DnDArgument : "value" "cx + random-irandom_range(-10, 10)"
		/// @DnDArgument : "var_1" "temp_oy"
		/// @DnDArgument : "value_1" "cy + random_range(-10, 10)"
		var temp_ox = cx + random-irandom_range(-10, 10);
		var temp_oy = cy + random_range(-10, 10);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5B2AD0A8
		/// @DnDParent : 7B149D58
		/// @DnDArgument : "xpos" "temp_ox"
		/// @DnDArgument : "ypos" "temp_oy"
		/// @DnDArgument : "objectid" "Object10"
		/// @DnDArgument : "layer" ""Enemies""
		/// @DnDSaveInfo : "objectid" "Object10"
		instance_create_layer(temp_ox, temp_oy, "Enemies", Object10);}}