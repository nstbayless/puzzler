for (i=1;i<400;i++) {
    x_ = irandom(PUZ_WIDTH-1)
    y_ = irandom(PUZ_HEIGHT-1)
    if (board[x_,y_]!=T_GREEN) {
        board[x_,y_] = T_GREEN;
        exit;
    }
}
