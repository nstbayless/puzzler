var sc = argument0;

for (x_ = 0;x_ < PUZ_WIDTH; x_++)
    for (y_ = 0;y_ < PUZ_HEIGHT; y_++) {
        if (board[x_,y_] == a_card_type[sc]) {
            minion[x_,y_] = true;
            change_timer[x_,y_] = CHANGE_TIMER_MAX
            change_minion[x_,y_] = true;
        }
    }
