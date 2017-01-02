smash_found = false;

streak = 3;

for (y_=0;y_<PUZ_WIDTH;y_++) {
    if (smash_found)
        break;
    for (x_=0;x_<PUZ_HEIGHT;x_++) {
        if (smash_found)
            break;
        type = board[x_,y_];
        if (x_<=PUZ_WIDTH-streak && !smashed_h[x_,y_])
            if (board[x_+1,y_]==type && board[x_+2,y_]==type) {
                smash_found = true;
                combo++;
                for (x_smash = x_; x_smash < PUZ_WIDTH; x_smash++) {
                    if (board[x_smash,y_]!=type)
                        break;
                    clear[x_smash,y_] = true;
                    smashed_h[x_smash,y_] = true;
                    smashes++;
                    scr_smash_orb_col(type);
                }
            }
        if (y_<=PUZ_HEIGHT-streak && !smashed_v[x_,y_])
            if (board[x_,y_+1]==type && board[x_,y_+2]==type) {
                smash_found = true;
                combo++;
                for (y_smash = y_; y_smash < PUZ_HEIGHT; y_smash++) {
                    if (board[x_,y_smash]!=type)
                        break;
                    clear[x_,y_smash] = true;
                    smashed_v[x_,y_smash] = true;
                    smashes++;
                    scr_smash_orb_col(type);
                }                  
            }
    }
}

if (smash_found) {
    smash_timer=15;
} else {
    if (smashes>0) {
        smashes=0;
        scr_set_mode(M_CASCADE)
        smash_timer = 0;
    } else {
        scr_attack_begin(); //perform attack
    }
}
