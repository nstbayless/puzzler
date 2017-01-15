with (obj_puzzle) {
    scr_board_reset_smash();
    for (x_=0;x_<PUZ_WIDTH;x_++) {
        for (y_=0;y_<PUZ_HEIGHT;y_++) {
            gem_fairness_counter = 0;
            var a_ = scr_spawn_orb();
            board[x_,y_] = a_[0];
            gem[x_,y_] = a_[1];
        }
    }
}
