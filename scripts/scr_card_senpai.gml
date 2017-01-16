var rm = irandom(scr_minion_count());

for (var x_=0;x_<PUZ_WIDTH;x_++)
    for (var y_=0;y_<PUZ_HEIGHT;y_++) {
        if (minion[x_,y_]) {
            if (rm==0) {
                scr_uncorrupt(x_,y_);
                exit;
            }
            rm--;
        }
    }
