with (obj_puzzle) {
    for (x_=0;x_<PUZ_WIDTH;x_++) {
        for (y_=0;y_<PUZ_HEIGHT;y_++) {
            board[x_,y_] = irandom(PUZ_TYPE_N-1);
            clear[x_,y_] = false;
            smashed[x_,y_] = false;
        }
    }
}
