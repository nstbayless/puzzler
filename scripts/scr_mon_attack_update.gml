any_of_type = false;

for (i=0;i<mon_orb_shots_n;i++) {
    if (!mon_orb_shot_enabled[i])
        continue;
    mon_orb_shot_y[i] += mon_orb_shot_v[i]
    mon_orb_shot_v[i] += 0.3;
    if (mon_orb_shot_y[i] > draw_puz_y+draw_puz_h+32) {
        mon_orb_shot_enabled[i]=false;
        party_hp -= mon_orb_shot_power[i];
    }
}

if (smash_timer >0)
    exit;

for (y_=PUZ_HEIGHT-1;y_>=0;y_--) {
    if (any_of_type) break;
    for (x_=0;x_<PUZ_WIDTH;x_++) {
        if (any_of_type) break;
        if (board[x_,y_] == mon_type && !new[x_,y_] &&!monster_used[x_,y_]) {
            any_of_type = true;
            monster_used[x_,y_] = true;
            i=mon_orb_shots_n++;
            mon_orb_shot_x[i] = (2*x_+1)*interval_x/2 + draw_puz_x;
            mon_orb_shot_y[i] = (2*y_+1)*interval_y/2 + draw_puz_y;
            mon_orb_shot_v[i] = 0;
            mon_orb_shot_power[i] = mon_atk;
            mon_orb_shot_enabled[i] = true;
        }
    }
}
    
if (any_of_type) {
    smash_timer = 6;
} else {
    for (i=0;i<mon_orb_shots_n;i++)
        if (mon_orb_shot_enabled[i])
            exit;
    scr_turn_begin();
}
