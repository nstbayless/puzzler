damage_dealt = 0;
for (i=0;i<party_size;i++) {
    damage_dealt += pc_damage[i];
    pc_damage[i] = 0;
}

mon_hp_residue = mon_hp;
mon_hp -= damage_dealt;

scr_attack_end_animation();
