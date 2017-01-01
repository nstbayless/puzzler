clear_found = false;

for (y_ = PUZ_HEIGHT-1; y_ >=0; y_--)
    for (x_ = 0; x_ < PUZ_WIDTH; x_++) {
        if (clear[x_,y_]) {
            clear_found = true;
            if (y_>0) {
                clear[x_,y_] = clear[x_,y_-1];
                clear[x_,y_-1] = true;
                board[x_,y_] = board[x_,y_-1]
            } else {
                board[x_,y_] = irandom(PUZ_TYPE_N-1);
                clear[x_,y_] = false;
            }
        }
    }

if (clear_found) {
    // possibly needs more cascading
    smash_timer = 5;
} else {
    // no cascading needed
    mode = 2;
    smash_timer = 15;
}

