if (mon_hp<=0) {
    // end tutorial
    tutorial_mode = 0;
    var mon_next_id = mon_id+1;
    if (battle_id >= 0) {
        // check battle definition for next encounter:
        battle_mon_p++;
        print(a_battle_n);
        print(battle_id);
        if (battle_mon_p >= a_battle_mon_n[battle_id]) {
            state.battle_complete[battle_id] = true;
            //battle ended
            scr_overworld_begin();
            exit;
        }
        mon_next_id = a_battle_mon[battle_id,battle_mon_p];
    }
    //setup next fight:
    scr_set_monster(mon_next_id);
    scr_board_reset_encounter(); // clear minions
    scr_turn_begin();
} else {
    scr_mon_attack_begin();
}
