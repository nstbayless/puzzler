stat_swaps = stat_swap_max;
scr_set_mode(M_MOVE);
scr_board_reset_meta();

swapstuck = false; // not stuck swapping
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
