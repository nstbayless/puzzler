var type = argument0[0];
var gem = argument0[1] > 0;
for (i=0; i < party_size; i++) {
    if (pc_type[i] == type || type == T_ATK) {
        pc_damage[i] += pc_atk[i];
        draw_pc_damage_scale[i] = 1.5;
        draw_pc_damage_timer[i] = 15;
        any_attack = true;
    }
}

gem_n+=gem;
