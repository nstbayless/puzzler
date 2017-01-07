scr_set_mode(M_ATK_DEF)
if (mon_def > 0) {
    smash_timer = ATTACK_DEF_MAX_T;
    for (i=0;i<party_size;i++) {
        pc_damage_def_tmp[i] = pc_damage[i];
        pc_damage[i]=max(0,pc_damage[i]-mon_def)
    }
} else
    smash_timer = 0;
