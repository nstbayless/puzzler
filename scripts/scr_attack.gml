// executes after smashing complete
// (mode 4)

mon_hp -= 25*combo*smash_col[T_ATK]

mode = 1;
stat_swaps = stat_swap_max;

for (i=0;i<party_size;i++) {
    pc_damage[i] *= combo;
}

for (i=0;i<party_size;i++) {
    mon_hp -= pc_damage[i];
    pc_damage[i] = 0;
}
