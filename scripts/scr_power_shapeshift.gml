// yellow orbs become blue

for (x_ = 0; x_ < PUZ_WIDTH; x_++) {
    for (y_ = 0; y_ < PUZ_HEIGHT; y_++) {
        if (board[x_,y_] == T_BLUE) {
            board[x_,y_] = T_YELLOW;
            change_timer[x_,y_] = CHANGE_TIMER_MAX;
        }
    }
}
