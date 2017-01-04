for (i=1;i<400;i++) {
    x_ = irandom(PUZ_WIDTH-1)
    y_ = irandom(PUZ_HEIGHT-1)
    if (board[x_,y_]!=T_GREEN) {
        board[x_,y_] = T_GREEN;
        change_timer[x_,y_] = CHANGE_TIMER_MAX;
        exit;
    }
}
