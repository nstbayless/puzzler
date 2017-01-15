// purple orbs become yellow

for (x_ = 0; x_ < PUZ_WIDTH; x_++) {
    for (y_ = 0; y_ < PUZ_HEIGHT; y_++) {
        if (board[x_,y_] == T_YELLOW) {
            board[x_,y_] = T_PURPLE;
            change_timer[x_,y_] = CHANGE_TIMER_MAX;
        }
    }
}

// Sassy gains watermelon ability
for (var i=0;i<party_size;i++) {
    if (party_pc[i] == C_SASSY) {
        scr_set_pc_power(i,25);
    }
}
