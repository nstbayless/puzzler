var t = irandom(PUZ_TYPE_N-1);
if (windfall_enabled) {
    // Irish' special power
    if (random(1)>0.5)
        t = T_YELLOW
    else {
        // don't spawn yellow
        t = irandom(PUZ_TYPE_N-2);
        if (t>= T_YELLOW)
            t++;
    }
}

return t;
