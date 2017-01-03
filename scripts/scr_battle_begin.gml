with (obj_puzzle) {
    game_mode = GM_BATTLE
    cur_x = 2;
    cur_y = 2;
    cur_pc_x = 0;
    cur_tray = false;
    scr_setup_party();
    scr_board_reset_encounter();
    round_counter = 0;
    for (i = 0; i < mon_card_queue_n; i ++) {
        mon_card_counter = i;
        var c = script_execute(mon_card_scr);
        mon_card_queue[i] = c;
        card_warmup[i] = a_card_warmup[c]
    }
    scr_turn_begin();
}
