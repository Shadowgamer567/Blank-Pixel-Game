/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6C6D6CAD
/// @DnDArgument : "var" "global.quiz_active"
/// @DnDArgument : "value" "true"
if(global.quiz_active == true){	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 31DBEDAC
	/// @DnDParent : 6C6D6CAD
	exit;}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 40C78FE9
/// @DnDArgument : "expr" "spawn_timer + 1"
/// @DnDArgument : "var" "spawn_timer"
spawn_timer = spawn_timer + 1;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4EF7AFC6
/// @DnDArgument : "expr" "spawn_timer >= spawn_interval"
if(spawn_timer >= spawn_interval){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0EB07AF5
	/// @DnDParent : 4EF7AFC6
	/// @DnDArgument : "var" "spawn_timer"
	spawn_timer = 0;

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 23A2B261
	/// @DnDParent : 4EF7AFC6
	/// @DnDArgument : "times" "cluster_count"
	repeat(cluster_count){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 58559BB4
		/// @DnDInput : 4
		/// @DnDParent : 23A2B261
		/// @DnDArgument : "expr" "random(room_width)"
		/// @DnDArgument : "expr_1" "random(room_height)"
		/// @DnDArgument : "var" "cx"
		/// @DnDArgument : "var_1" "cy"
		/// @DnDArgument : "var_2" "sx"
		/// @DnDArgument : "var_3" "sy"
		cx = random(room_width);
		cy = random(room_height);
		sx = 0;
		sy = 0;
	
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 23097EC9
		/// @DnDParent : 23A2B261
		/// @DnDArgument : "times" "100"
		repeat(100){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2B1E6F45
			/// @DnDInput : 2
			/// @DnDParent : 23097EC9
			/// @DnDArgument : "expr" "random_range(0, room_width)"
			/// @DnDArgument : "expr_1" "random_range(0, room_height)"
			/// @DnDArgument : "var" "sx"
			/// @DnDArgument : "var_1" "sy"
			sx = random_range(0, room_width);
			sy = random_range(0, room_height);
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 7DF6DA65
			/// @DnDParent : 23097EC9
			/// @DnDArgument : "expr" "point_distance(px ,py, cx, cy) <= safe_distance"
			if(point_distance(px ,py, cx, cy) <= safe_distance){	/// @DnDAction : YoYo Games.Loops.Repeat
				/// @DnDVersion : 1
				/// @DnDHash : 22B3EF9F
				/// @DnDParent : 7DF6DA65
				/// @DnDArgument : "times" "cluster_size"
				repeat(cluster_size){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 41BA7A45
					/// @DnDInput : 2
					/// @DnDParent : 22B3EF9F
					/// @DnDArgument : "expr" "cx + random_range(-10, 10)"
					/// @DnDArgument : "expr_1" "cy + random_range(-10, 10)"
					/// @DnDArgument : "var" "ox"
					/// @DnDArgument : "var_1" "oy"
					ox = cx + random_range(-10, 10);
					oy = cy + random_range(-10, 10);
				
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 38416712
					/// @DnDParent : 22B3EF9F
					/// @DnDArgument : "xpos" "ox"
					/// @DnDArgument : "ypos" "oy"
					/// @DnDArgument : "objectid" "Object10"
					/// @DnDArgument : "layer" ""Enemies""
					/// @DnDSaveInfo : "objectid" "Object10"
					instance_create_layer(ox, oy, "Enemies", Object10);}
			
				/// @DnDAction : YoYo Games.Loops.Break
				/// @DnDVersion : 1
				/// @DnDHash : 3F43A92A
				/// @DnDParent : 7DF6DA65
				break;}}}}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 610D3927
/// @DnDArgument : "expr" "difficulty_timer + 1"
/// @DnDArgument : "var" "difficulty_timer"
difficulty_timer = difficulty_timer + 1;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 25E1D76D
/// @DnDArgument : "expr" "difficulty_timer >= difficulty_increase_time"
if(difficulty_timer >= difficulty_increase_time){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1C81A927
	/// @DnDInput : 3
	/// @DnDParent : 25E1D76D
	/// @DnDArgument : "expr_1" "cluster_size + 1"
	/// @DnDArgument : "expr_2" "cluster_count + 1"
	/// @DnDArgument : "var" "difficulty_timer"
	/// @DnDArgument : "var_1" "cluster_size"
	/// @DnDArgument : "var_2" "cluster_count"
	difficulty_timer = 0;
	cluster_size = cluster_size + 1;
	cluster_count = cluster_count + 1;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 64E98BB8
	/// @DnDParent : 25E1D76D
	/// @DnDArgument : "expr" "cluster_size >= cluster_max"
	if(cluster_size >= cluster_max){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 58B7344F
		/// @DnDParent : 64E98BB8
		/// @DnDArgument : "expr" "cluster_max"
		/// @DnDArgument : "var" "cluster_size"
		cluster_size = cluster_max;}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 52C784EB
	/// @DnDParent : 25E1D76D
	/// @DnDArgument : "expr" "cluster_count >= cluster_count_max"
	if(cluster_count >= cluster_count_max){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4FE6DDCE
		/// @DnDParent : 52C784EB
		/// @DnDArgument : "expr" "cluster_count_max"
		/// @DnDArgument : "var" "cluster_count"
		cluster_count = cluster_count_max;}}