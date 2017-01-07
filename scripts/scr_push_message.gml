var str = argument[0];
var i = game_message_n++;
game_message_image[i] = -1;
if (argument_count>1)
    game_message_image[i] = argument[1];

if (str!="")
    game_message[i] = str;
