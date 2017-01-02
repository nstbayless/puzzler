for (x_ = 0; x_ < PUZ_WIDTH; x_++) {
    for (y_ = 0; y_ < PUZ_HEIGHT; y_++) {
        clear[x_,y_] = true;
        clear_timer[x_,y_] = 0;
        cascade_return_mode = M_MOVE;
        scr_set_mode(M_CASCADE);
    }
}

mon_hp-=mon_hpmax/2;
