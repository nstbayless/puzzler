if (mon_hp<=0) {
    scr_set_monster(mon_id+1);
    scr_board_reset_encounter(); // clear minions
    scr_turn_begin();
    // end tutorial
    tutorial_mode = 0;
} else {
    scr_mon_attack_begin();
}
