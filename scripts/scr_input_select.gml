var press = false;
if (input.pointer_tap && argument_count > 0) {
    var min_x = argument[0];
    var max_x = argument[2];
    var min_y = argument[1];
    var max_y = argument[3];
    if in_range(mouse_x,min_x,max_x) && in_range(mouse_y,min_y,max_y)
        press = true;
}


return press || keyboard_check_pressed(vk_space)||keyboard_check_pressed(vk_enter)||keyboard_check_pressed(ord('Z'))
