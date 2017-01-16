var min_count = 0;
for (x_=0;x_<PUZ_WIDTH;x_++) {
    for (y_=0;y_<PUZ_HEIGHT;y_++) {
        min_count += minion[x_,y_]
    }
}
return min_count;
