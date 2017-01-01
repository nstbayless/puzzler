smash_found = false;

streak = 3;

for (x_=0;x_<PUZ_WIDTH;x_++) {
    if (smash_found)
        break;
    for (y_=0;y_<PUZ_HEIGHT;y_++) {
        type = board[x_,y_];
        if (clear[x_,y_])
            continue;
        if (x_<=PUZ_WIDTH-streak)
            if (board[x_+1,y_]==type && board[x_+2,y_]==type) {
                smash_found = true;
                smashed[x_,y_] = true;
                clear[x_,y_] = true;
                clear[x_+1,y_] = true;
                clear[x_+2,y_] = true;
                smashes+=3;
                break;
            }
        if (y_<=PUZ_HEIGHT-streak)
            if (board[x_,y_+1]==type && board[x_,y_+2]==type) {
                smash_found = true;
                smashed[x_,y_] = true;
                clear[x_,y_] = true;
                clear[x_,y_+1] = true;
                clear[x_,y_+2] = true;   
                smashes+=3;                       
                break;
            }
    }
}

if (smash_found) {
    smash_timer=15;
} else {
    if (smashes>0) {
        smashes=0;
        mode = 3;
        smash_timer = 22;
    } else {
        scr_board_reset_smash();
        mode = 1;
        stat_swaps = stat_swap_max;
    }
}
