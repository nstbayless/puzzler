// executes after smashing complete
// (mode 4)

mode = 4;

if (combo > 1) {
    for (i=0;i<party_size;i++) {
        pc_damage[i] *= combo;
        draw_pc_damage_scale[i] = 2;
        draw_pc_damage_timer[i] = 20;
    }
    smash_timer = 25;
}
