// executes after smashing complete
// (mode 4)

scr_set_mode(M_ATK_COMBO);

if (combo > 1) {
    for (i=0;i<party_size;i++) {
        pc_damage[i] *= combo;
        draw_pc_damage_scale[i] = 2;
        draw_pc_damage_timer[i] = 20;
    }
    smash_timer = 25;
} else {
    smash_timer = 0;
}
