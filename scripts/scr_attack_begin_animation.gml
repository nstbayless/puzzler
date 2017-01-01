// mode: M_ATK_RISE

any_damage = false;
for (i=0;i<party_size;i++) {
    if (pc_damage[i] > 0)
        any_damage = true;   
}

if (any_damage) {
    smash_timer = ATTACK_ANIM_MAX_T; 
    mode = M_ATK_RISE;
} else {
    scr_turn_begin();
}
