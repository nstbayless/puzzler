new_x = argument0;
new_y = argument1;

old_x = cur_x;
old_y = cur_y;

with obj_puzzle {
    cur_x = new_x;
    cur_y = new_y;
    
    if (cur_sel) {
        tmp_type = board[new_x,new_y];
        board[new_x,new_y] = board[old_x,old_y];
        board[old_x,old_y] = tmp_type;
        
        stat_swaps --;
        
        if (stat_swaps==0) {
            scr_endturn();
        }
    }
}
