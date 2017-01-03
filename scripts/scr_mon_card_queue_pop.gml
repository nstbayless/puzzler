for (i = 0; i < mon_card_queue_n - 1; i ++) {
    mon_card_queue[i] = mon_card_queue[i+1];
    card_warmup[i] = card_warmup[i+1]
}

i = mon_card_queue_n - 1
var c = script_execute(mon_card_scr);
mon_card_queue[i] = c
card_warmup[i] = a_card_warmup[c]
