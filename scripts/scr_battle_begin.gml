with (obj_puzzle) {
    game_mode = GM_BATTLE
    cur_x = 2;
    cur_y = 2;
    cur_pc_x = 0;
    cur_tray = false;
    scr_setup_party();
    scr_board_randomize();
    scr_encounter_begin();
    scr_turn_begin();
}
