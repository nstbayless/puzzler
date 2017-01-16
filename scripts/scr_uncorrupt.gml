x_ = argument0;
y_ = argument1;

if (minion[x_,y_]) {
    minion[x_,y_] = false;
    change_timer[x_,y_] = CHANGE_TIMER_MAX;
    change_minion[x_,y_] = true;
}
