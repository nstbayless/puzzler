smash_timer = 7;
scr_set_mode(M_MATK);

any_of_type = false;

for (y_=PUZ_HEIGHT-1;y_>=0;y_--) {
    for (x_=0;x_<PUZ_WIDTH;x_++) {
        if (minion[x_,y_]) {
            any_of_type = true;
        }
    }
}

if (!any_of_type)
    scr_mon_spellcard();
