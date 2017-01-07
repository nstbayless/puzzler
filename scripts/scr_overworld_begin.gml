game_mode = GM_OVERWORLD;
battle_access_n = 0;
for (i=0;i<a_battle_n;i++) {
    if (script_execute(a_battle_prq[i],i) || god_mode) {
        battle_access[battle_access_n++] = i;
    }
}
overworld_sel = 0;
overworld_scroll_y = 0;

