mode = 6;
anim_hit_power = log2(damage_dealt)/log2(1.2)
if (anim_hit_power < 0)
    anim_hit_power = 0;
anim_hit_max = floor(2 + anim_hit_power/2)
smash_timer = anim_hit_max;
