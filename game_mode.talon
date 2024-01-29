mode: user.game
-
settings():
    key_wait = 5

tag(): user.rango_direct_clicking

^command mode$:
    mode.disable("user.game")
    mode.enable("command")

<number_small> times: core.repeat_command(number_small - 1)
(repeat that | twice): core.repeat_command(1)

# From community keys.talon
[(go | car)] <user.arrow_keys>: user.move_cursor(arrow_keys)
#press <user.keys>: key(keys)

# From gaze-ocr
[left] (touch | click | quick) <user.timestamped_prose>$:
    user.click_text(timestamped_prose)

# From mouse.talon
touch:
    #mouse_click(0)
    user.super_click()
    # close the mouse grid if open
    user.grid_close()
    # End any open drags
    # Touch automatically ends left drags so this is for right drags specifically
    user.mouse_drag_end()

righty:
    #mouse_click(1)
    user.super_right()
    # close the mouse grid if open
    user.grid_close()

test:
    result = user.image_appeared_on_screen("/home/jarrod/Pictures/click_symbols/save_selected.png")
    print(result)