/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 62FBEDAA
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// 1. Find the nearest player$(13_10)player_id = instance_nearest(x, y, Object1);$(13_10)$(13_10)// 2. Only move if player exists$(13_10)if player_id != noone {$(13_10)$(13_10)    // 3. Calculate direction to player$(13_10)    dir = point_direction(x, y, player_id.x, player_id.y);$(13_10)$(13_10)    // 4. Snap direction to nearest 45° (0-7 for 8 directions)$(13_10)    dir8 = round(dir / 45) mod 8;$(13_10)$(13_10)    // 5. Assign horizontal and vertical spd based on 8 directions$(13_10)	switch(dir8) {$(13_10)    case 0: hsp = spd;  vsp = 0; break;$(13_10)    case 1: hsp = spd;  vsp = -spd; break;$(13_10)    case 2: hsp = 0;      vsp = -spd; break;$(13_10)    case 3: hsp = -spd; vsp = -spd; break;$(13_10)    case 4: hsp = -spd; vsp = 0; break;$(13_10)    case 5: hsp = -spd; vsp = spd; break;$(13_10)    case 6: hsp = 0;      vsp = spd; break;$(13_10)    case 7: hsp = spd;  vsp = spd; break;$(13_10)	}$(13_10)$(13_10)    // 6. Apply movement immediately$(13_10)    x = x + hsp;$(13_10)    y = y + vsp;$(13_10)}$(13_10)"
/// @description Execute Code
// 1. Find the nearest player
player_id = instance_nearest(x, y, Object1);

// 2. Only move if player exists
if player_id != noone {

    // 3. Calculate direction to player
    dir = point_direction(x, y, player_id.x, player_id.y);

    // 4. Snap direction to nearest 45° (0-7 for 8 directions)
    dir8 = round(dir / 45) mod 8;

    // 5. Assign horizontal and vertical spd based on 8 directions
	switch(dir8) {
    case 0: hsp = spd;  vsp = 0; break;
    case 1: hsp = spd;  vsp = -spd; break;
    case 2: hsp = 0;      vsp = -spd; break;
    case 3: hsp = -spd; vsp = -spd; break;
    case 4: hsp = -spd; vsp = 0; break;
    case 5: hsp = -spd; vsp = spd; break;
    case 6: hsp = 0;      vsp = spd; break;
    case 7: hsp = spd;  vsp = spd; break;
	}

    // 6. Apply movement immediately
    x = x + hsp;
    y = y + vsp;
}