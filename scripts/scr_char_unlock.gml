var c = argument0;

for (var i=0;i<party_size;i++)
    if (party_pc[i] == c)
        return false;

if (party_size<max_party_size)
    party_pc[party_size++] = c;
    
scr_push_message(a_pc_name[c] +" joins the fight!", a_pc_sprite[c])
return true;
