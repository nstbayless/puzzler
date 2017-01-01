// mode = 5

any_damage = false;
for (i=0;i<party_size;i++) {
    if (pc_damage[i] > 0)
        any_damage = true;   
}

if (any_damage) {
    smash_timer = ATTACK_ANIM_MAX_T; 
    mode = 5;
} else {
    scr_turn_begin();
}
