if (tutorial_mode > 0) {
    tutorial_timer++;
    if (tut_message_in_timer > 0) {
        tut_message_in_timer ++;
        if (tut_message_in_timer > TUT_MESSAGE_ANIM_MAX_T)
            tut_message_in_timer = TUT_MESSAGE_ANIM_MAX_T;
    }
    if (tutorial_mode == 1) {
        tutorial_mode++;
        //tut_message_in_timer = 1;
        tut_message = "Use the arrow keys to move the cursor around"
        scr_push_message(tut_message);tut_message = "";
    } else if (tutorial_mode == 3) {
        tutorial_mode++;
        //tut_message_in_timer = 1;
        tut_message = "Hold shift and arrow keys to swap orbs"
        scr_push_message(tut_message);tut_message = "";
    } else if (tutorial_mode == 5) {
        tutorial_mode++;
        tutorial_timer = 0;
        //tut_message_in_timer = 1;
        tut_message = "You get three swaps per turn. Make 'em count!"
        scr_push_message(tut_message);tut_message = "";
    } else if (tutorial_mode == 6 && tutorial_timer > 130) {
        tutorial_mode++;
        tut_message_in_timer = 1;
        tut_message = "(If you don't feel like making all three swaps, press space to end your turn early)"
    } else if (tutorial_mode == 8) {
        tutorial_mode++;
        //tut_message_in_timer = 1;
        tut_message = "Align three orbs of the same colour to smash them."
        scr_push_message(tut_message);tut_message = "";
    } else if (tutorial_mode == 10) {
        tutorial_mode++;
        //tut_message_in_timer = 1;
        tut_message = "Smash " + PUZ_S[pc_type[0]] + " orbs to make " + pc_name[0] + " attack."
        scr_push_message(tut_message);tut_message = "";
    } else if (tutorial_mode == 12) {
        tutorial_mode++;
        //tut_message_in_timer = 1;
        tut_message = "Glowing minion orbs will attack you every turn until you smash them."
        scr_push_message(tut_message);tut_message = "";
    }
}
