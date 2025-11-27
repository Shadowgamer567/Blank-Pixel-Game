/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2FE2FF8C
/// @DnDComment : 
/// @DnDArgument : "funcName" "load_questions"
function load_questions() {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 16691A18
	/// @DnDInput : 3
	/// @DnDParent : 2FE2FF8C
	/// @DnDArgument : "expr" "[]"
	/// @DnDArgument : "expr_1" "file_text_open_read("Questions.txt")"
	/// @DnDArgument : "var" "global.questions"
	/// @DnDArgument : "var_1" "file"
	/// @DnDArgument : "var_2" "current_q"
	global.questions = [];
	file = file_text_open_read("Questions.txt");
	current_q = 0;

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 617CC429
	/// @DnDParent : 2FE2FF8C
	/// @DnDArgument : "times" "!file_text_eof(file)"
	repeat(!file_text_eof(file)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5DE2FD32
		/// @DnDInput : 2
		/// @DnDParent : 617CC429
		/// @DnDArgument : "expr" "string_trim(file_text_readln(file))"
		/// @DnDArgument : "expr_1" "show_debug_message("LINE: [" + line + "]")"
		/// @DnDArgument : "var" "line"
		/// @DnDArgument : "var_1" "debu"
		line = string_trim(file_text_readln(file));
		debu = show_debug_message("LINE: [" + line + "]");
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 5C5E4D7D
		/// @DnDParent : 617CC429
		/// @DnDArgument : "expr" "string_pos("Q.", line) == 1 "
		if(string_pos("Q.", line) == 1 ){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3C8690D3
			/// @DnDParent : 5C5E4D7D
			/// @DnDArgument : "expr" "current_q + 1"
			/// @DnDArgument : "var" "current_q"
			current_q = current_q + 1;
		
			/// @DnDAction : YoYo Games.Common.Execute_Code
			/// @DnDVersion : 1
			/// @DnDHash : 387490DA
			/// @DnDParent : 5C5E4D7D
			/// @DnDArgument : "code" "/// @description Execute Code$(13_10)global.questions = [];$(13_10)$(13_10)var f = file_text_open_read("Questions.txt");$(13_10)var current = -1;$(13_10)$(13_10)while (!file_text_eof(f)) {$(13_10)    var line = string_trim(file_text_readln(f));$(13_10)	$(13_10)	show_debug_message("LINE: [" + line + "]");$(13_10)    // Question$(13_10)    if (string_pos("Q.", line) == 1) {$(13_10)        current++;$(13_10)        global.questions[current] = {$(13_10)            text: string_copy($(13_10)                line,$(13_10)                string_pos("\"", line) + 1,$(13_10)                string_last_pos("\"", line) - string_pos("\"", line) - 1$(13_10)            ),$(13_10)            answers: ["", "", "", ""],$(13_10)            correct: 0$(13_10)        };$(13_10)    }$(13_10)$(13_10)    // Answer$(13_10)    else if (string_pos("a.", line) == 1) {$(13_10)        var idx = real(string_copy($(13_10)            line,$(13_10)            string_last_pos(".", line) + 1,$(13_10)            1$(13_10)        )) - 1;$(13_10)$(13_10)        var txt = string_copy($(13_10)            line,$(13_10)            string_pos("\"", line) + 1,$(13_10)            string_last_pos("\"", line) - string_pos("\"", line) - 1$(13_10)        );$(13_10)$(13_10)        global.questions[current].answers[idx] = txt;$(13_10)$(13_10)        if (string_pos("*C*", line) > 0) {$(13_10)            global.questions[current].correct = idx;$(13_10)        }$(13_10)    }$(13_10)}$(13_10)$(13_10)file_text_close(f);$(13_10)"
			/// @description Execute Code
			global.questions = [];
			
			var f = file_text_open_read("Questions.txt");
			var current = -1;
			
			while (!file_text_eof(f)) {
			    var line = string_trim(file_text_readln(f));
				
				show_debug_message("LINE: [" + line + "]");
			    // Question
			    if (string_pos("Q.", line) == 1) {
			        current++;
			        global.questions[current] = {
			            text: string_copy(
			                line,
			                string_pos("\"", line) + 1,
			                string_last_pos("\"", line) - string_pos("\"", line) - 1
			            ),
			            answers: ["", "", "", ""],
			            correct: 0
			        };
			    }
			
			    // Answer
			    else if (string_pos("a.", line) == 1) {
			        var idx = real(string_copy(
			            line,
			            string_last_pos(".", line) + 1,
			            1
			        )) - 1;
			
			        var txt = string_copy(
			            line,
			            string_pos("\"", line) + 1,
			            string_last_pos("\"", line) - string_pos("\"", line) - 1
			        );
			
			        global.questions[current].answers[idx] = txt;
			
			        if (string_pos("*C*", line) > 0) {
			            global.questions[current].correct = idx;
			        }
			    }
			}
			
			file_text_close(f);}}}