party_hpmax = 0;

for (i=0;i<party_size;i++) {
    m = party_pc[i];
    pc_sprite[i] = a_pc_sprite[m]
    pc_name[i] = a_pc_name[m]
    party_hpmax += a_pc_hp[m]
    pc_atk[i] = a_pc_atk[m]
    pc_type[i] = a_pc_type[m]
    pc_power[i] = a_pc_power[m]
    
    // power
    var pow = pc_power[i];
    power_name[i] = a_power_name[pow];
    power_type[i] = a_power_type[pow];
    power_cost[i] = a_power_cost[pow];
    power_description[i] = a_power_description[pow];
    power_script[i] = a_power_script[pow];
    
    // attack value this turn:
    pc_damage[i] = 0;
    draw_pc_damage_scale[i] = 0;
    draw_pc_damage_timer[i] = 0;
}

party_hp = party_hpmax;

for (i = 0; i < PUZ_TYPE_N - 1;i++) {
    party_resource[i] = 0;
}
