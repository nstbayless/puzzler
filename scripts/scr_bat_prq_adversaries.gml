var sc = state.start_char;
var b = argument0;
switch(a_battle_extra[i,0]) {
case 0:
    return (sc == C_NaOH || sc == C_IRISH) && state.battle_complete[b-1];
case 1:
    return (sc == C_SASSY || sc == C_QUEEN) && state.battle_complete[b-2];
}
