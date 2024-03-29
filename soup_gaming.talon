tag: user.full_mouse_grid_showing
and tag: user.full_mouse_grid_enabled
and mode: user.full_mouse_grid
and not mode: sleep
and mode: user.game
-

<user.letter> <user.letter>:
    user.full_grid_select(letter_1 + letter_2, -1, "")
    mouse_click(0)
    user.full_grid_activate()

<number> <user.letter> <user.letter>:
    user.full_grid_select(letter_1 + letter_2, number, "")
    user.mouse_click(0)
    user.full_grid_activate()

alphabet checkers:
    user.full_grid_checkers_toggle()


