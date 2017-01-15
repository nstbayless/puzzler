var c_unlock = 0;

// A team:
if (state.start_char==C_NaOH)
    c_unlock = (C_IRISH);
if (state.start_char==C_IRISH)
    c_unlock = (C_NaOH);

// Royals:
if (state.start_char==C_SASSY)
    c_unlock = (C_QUEEN);
if (state.start_char==C_QUEEN)
    c_unlock = (C_SASSY);
    
// Others:

if (state.start_char==C_KAZZAM)
    c_unlock = C_SASSY;
if (state.start_char==C_GUY3)
    c_unlock = C_BRYAN;

if (scr_char_unlock(c_unlock)) 
    scr_push_message("Smash " + PUZ_S[a_pc_type[c_unlock]] + " orbs to make " + a_pc_name[c_unlock] + " attack. Smashing white orbs causes both " + a_pc_name[c_unlock] + " and " + a_pc_name[state.start_char] + " to attack.##The more orbs smashed, the more damage dealt.##Get combos to multiply your damage!")
