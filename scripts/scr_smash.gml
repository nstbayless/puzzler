smash_found = false;

streak = 3;

for (x_=0;x_<PUZ_WIDTH;x_++) {
    if (smash_found)
        break;
    for (y_=0;y_<PUZ_HEIGHT;y_++) {
        if (smash_found)
            break;
        type = board[x_,y_];
        if (smashed[x_,y_])
            continue;
        if (x_<=PUZ_WIDTH-streak)
            if (board[x_+1,y_]==type && board[x_+2,y_]==type) {
                smash_found = true;
                smashed[x_,y_] = true;
                combo++;
                for (x_smash = x_; x_smash < PUZ_WIDTH; x_smash++) {
                    if (board[x_smash,y_]!=type)
                        break;
                    clear[x_smash,y_] = true;
                    smashes++;
                }
            }
        if (y_<=PUZ_HEIGHT-streak)
            if (board[x_,y_+1]==type && board[x_,y_+2]==type) {
                smash_found = true;
                smashed[x_,y_] = true;
                combo++;
                for (y_smash = y_; y_smash < PUZ_HEIGHT; y_smash++) {
                    if (board[x_,y_smash]!=type)
                        break;
                    clear[x_,y_smash] = true;
                    smashes++;
                }                  
            }
    }
}

if (smash_found) {
    smash_timer=15;
} else {
    if (smashes>0) {
        smashes=0;
        mode = 3;
        smash_timer = 0;
    } else {
        scr_board_reset_smash();
        mode = 1;
        stat_swaps = stat_swap_max;
    }
}
