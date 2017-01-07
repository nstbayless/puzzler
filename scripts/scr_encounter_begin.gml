round_counter = 0;
// fill card queue
scr_board_reset_encounter();
for (i = 0; i < mon_card_queue_n; i ++) {
    mon_card_counter = i;
    var c = script_execute(mon_card_scr);
    mon_card_queue[i] = c[0];
    card_warmup[i] = c[1];
}
// initialize falling animation
card_pop_queue_t = CARD_POP_QUEUE_MAX_T;

scr_turn_begin();
