var sc = argument0;

for (x_ = 0;x_ < PUZ_WIDTH; x_++)
    for (y_ = 0;y_ < PUZ_HEIGHT; y_++) {
        if (board[x_,y_] == a_card_type[sc]) {
            clear[x_,y_] = true;
        }
    }
    
cascade_return_mode = M_PREMOVE;
scr_set_mode(M_CASCADE);
