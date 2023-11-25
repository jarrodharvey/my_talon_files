mode: user.game
-
settings():
    key_wait = 5

tag(): user.rango_direct_clicking

^command mode$:
    mode.disable("user.game")
    mode.enable("command")

# From community keys.talon
go <user.arrow_keys>: user.move_cursor(arrow_keys)
<user.letter>: key(letter)
(ship | uppercase) <user.letters> [(lowercase | sunk)]:
    user.insert_formatted(letters, "ALL_CAPS")
<user.symbol_key>: key(symbol_key)
<user.function_key>: key(function_key)
<user.special_key>: key(special_key)
<user.modifiers> <user.unmodified_key>: key("{modifiers}-{unmodified_key}")
# for key combos consisting only of modifiers, eg. `press super`.
press <user.modifiers>: key(modifiers)
# for consistency with dictation mode and explicit arrow keys if you need them.
press <user.keys>: key(keys)

# From gaze-ocr
[left] (touch | click) <user.timestamped_prose>$:
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
    mouse_click(1)
    user.super_right()
    # close the mouse grid if open
    user.grid_close()
