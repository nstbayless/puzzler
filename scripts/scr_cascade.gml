clear_found = false;

for (y_ = PUZ_HEIGHT-1; y_ >=0; y_--)
    for (x_ = 0; x_ < PUZ_WIDTH; x_++) {
        if (clear[x_,y_]) {
            clear_found = true;
            if (y_>0) {
                clear[x_,y_] = clear[x_,y_-1];
                minion[x_,y_] = minion[x_,y_-1];
                clear[x_,y_-1] = true;
                board[x_,y_] = board[x_,y_-1]
                gem[x_,y_] = gem[x_,y_-1]
            } else {
                a_ = scr_spawn_orb();
                board[x_,y_] = a_[0]
                gem[x_,y_] = a_[1]
                clear[x_,y_] = false;
                minion[x_,y_] = false;
            }
        }
    }

if (clear_found) {
    // possibly needs more cascading
    smash_timer = 5;
} else {
    // no cascading needed; return to previous mode
    scr_set_mode(cascade_return_mode);
    smash_timer = 15;
    scr_board_reset_smash();
}

