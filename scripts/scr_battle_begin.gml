with (obj_puzzle) {
    if (argument_count>0) {
        // pick monster:
        battle_id = argument[0];
        battle_mon_p = 0;
        scr_set_monster(a_battle_mon[battle_id,battle_mon_p]);
    } else {
        battle_id = -1;
    }
    // setup battle
    game_mode = GM_BATTLE
    cur_x = 2;
    cur_y = 2;
    cur_pc_x = 0;
    cur_tray = false;
    scr_setup_party();
    scr_board_randomize();
    scr_board_reset_encounter();
    scr_encounter_begin();
    scr_turn_begin();
    // check tutorial
    if (battle_id == 0)
        scr_tutorial_begin();
}
