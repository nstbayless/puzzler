// check for TPK
if (party_hp <=0) {
    scr_overworld_begin();
    exit;
}

stat_swaps = stat_swap_max;
scr_set_mode(M_MOVE);
scr_board_reset_turn();
round_counter++;

swapstuck = false; // not stuck swapping
any_attack = false;

for (i=0;i<party_size;i++) {
    pc_damage[i] = 0;
}

//decrement power counters:
for (i=0;i<power_counter_n;i++) {
    if (power_counter[i]>0) {
        power_counter[i]--;
        if (power_counter[i]==0) {
            script_execute(a_power_end_script[i])
        }
    }
}

// tutorial update:

if (tutorial_mode > 1 && tutorial_mode <= 7)
    tutorial_mode = 8;
if (tutorial_mode >= 9 && tutorial_mode <= 11)
    tutorial_mode++;
