// tutorial whale's difficulty is constant w.r.t. character
mon_hpmax = 25 * pc_atk[0];
mon_hp = mon_hpmax;

//special pattern
for (x_ = 0; x_ < PUZ_WIDTH; x_ ++) {
    for (y_ = 0; y_ < PUZ_HEIGHT; y_ ++) {
        board[x_,y_] = (2*x_+y_ + pc_type[0]+4) % (PUZ_TYPE_N-1)
    }
}

tutorial_timer = 0;
tutorial_mode = 1;
tut_message = "";
tut_message_in_timer = 0;
tut_message_out_timer = 0;
