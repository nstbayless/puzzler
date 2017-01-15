var sc = argument0;
print(a_card_type_from[sc])
for (x_ = 0;x_ < PUZ_WIDTH; x_++)
    for (y_ = 0;y_ < PUZ_HEIGHT; y_++) {
        if (board[x_,y_] == a_card_type_from[sc]) {
            board[x_,y_] = a_card_type_to[sc]
            change_timer[x_,y_] = CHANGE_TIMER_MAX
        }
    }
