if (smash_timer<0) {
    scr_turn_begin();
} else {
    if (smash_timer == 18) {
        mon_card_counter++;
        c = mon_card_queue[0];
        script_execute(a_card_script[c]);
        scr_mon_card_queue_pop();
    }
}
