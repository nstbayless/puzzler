scr_set_mode(M_MSPELL);
card_warmup[0]--;
if (card_warmup[0] > 0) {
    scr_turn_begin();
} else {
    smash_timer = MSPELL_ANIM_MAX_T
}
