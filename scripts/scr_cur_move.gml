new_x = argument0;
new_y = argument1;

old_x = cur_x;
old_y = cur_y;

with obj_puzzle {
    cur_x = new_x;
    cur_y = new_y;
    
    if (cur_sel) {
        // swap gem type
        tmp_type = board[new_x,new_y];
        board[new_x,new_y] = board[old_x,old_y];
        board[old_x,old_y] = tmp_type;
        
        // swap minion status
        tmp_minion = minion[new_x,new_y];
        minion[new_x,new_y] = minion[old_x,old_y];
        minion[old_x,old_y] = tmp_minion;
        
        //swap gem status
        tmp_gem = gem[new_x,new_y]
        gem[new_x,new_y] = gem[old_x,old_y];
        gem[old_x,old_y] = tmp_gem;
        
        stat_swaps --;
        swapstuck = true;
        
        if (stat_swaps==0) {
            scr_endturn();
        }
    }
    
    // tutorial update:
    if (tutorial_mode == 2)
        tutorial_mode = 3;
    if (tutorial_mode == 4 && cur_sel)
        tutorial_mode = 5;
}
