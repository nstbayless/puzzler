type = argument0;

for (i=0; i < party_size; i++) {
    if (pc_type[i] == type || type == T_ATK) {
        pc_damage[i] += pc_atk[i];
    }
}
