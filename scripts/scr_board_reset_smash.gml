with obj_puzzle {
    smashes=0;
    for (x_ = 0; x_ < PUZ_WIDTH; x_++)
        for (y_ = 0; y_ < PUZ_HEIGHT; y_++) {
            clear[x_,y_] = false;
            smashed[x_,y_] = false;
        }
}
