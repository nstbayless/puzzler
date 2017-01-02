
with (obj_puzzle) {
    scr_board_reset_smash();
    for (x_=0;x_<PUZ_WIDTH;x_++) {
        for (y_=0;y_<PUZ_HEIGHT;y_++) {
            board[x_,y_] = irandom(PUZ_TYPE_N-1);
        }
    }
}
