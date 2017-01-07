var no_white = false;
if (tutorial_mode > 0 && tutorial_mode < 15)
    no_white = true;
var t = irandom(PUZ_TYPE_N-1 - no_white);

//special rules for spawning extra of a type:
var se_type = T_YELLOW;
var se_enabled = false;
var se_amount = 0.30;
if (windfall_enabled) // Irish's special power
    se_enabled = true;
if (tutorial_mode > 0) {
    // tutorial boost
    se_enabled = true;
    se_amount = 0.32;
    se_type = pc_type[0];
}
if (se_enabled) {
    if (random(1)<se_amount)
        t = se_type
    else {
        // don't spawn special type
        t = irandom(PUZ_TYPE_N-2 - no_white);
        if (t>= se_type)
            t++;
    }
}

return t;
