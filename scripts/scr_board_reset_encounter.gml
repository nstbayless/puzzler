with obj_puzzle {
    smashes=0;
    mon_orb_shots_n = 0;
    for (x_ = 0; x_ < PUZ_WIDTH; x_++)
        for (y_ = 0; y_ < PUZ_HEIGHT; y_++) {
            clear[x_,y_] = false;
            smashed_h[x_,y_] = false;
            smashed_v[x_,y_] = false;
            minion[x_,y_] = false;
            change_timer[x_,y_] = 0
            monster_used[x_,y_] = false;
            offset_x[x_,y_] = 0;
            offset_y[x_,y_] = 0;
            touched[x_,y_] = 0;
        }
}
