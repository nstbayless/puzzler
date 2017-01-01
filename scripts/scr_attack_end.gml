for (i=0;i<party_size;i++) {
    mon_hp -= pc_damage[i];
    pc_damage[i] = 0;
}
stat_swaps = stat_swap_max;
mode = 1;
