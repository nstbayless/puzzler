game_message_n--;
for (var i = 0;i<game_message_n;i++) {
    game_message[i] = game_message[i+1]
    game_message_image[i] = game_message_image[i+1]
}
