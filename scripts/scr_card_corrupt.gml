for (var i=1;i<400;i++) {
    x_ = irandom(PUZ_WIDTH-1)
    y_ = irandom(PUZ_HEIGHT-1)
    if (!minion[x_,y_]) {
        minion[x_,y_] = true;
        change_timer[x_,y_] = CHANGE_TIMER_MAX
        change_minion[x_,y_] = true;
        exit;
    }
}
