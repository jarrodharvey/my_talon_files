tag: user.full_mouse_grid_showing
and tag: user.full_mouse_grid_enabled
and mode: user.full_mouse_grid
and not mode: sleep
and mode: user.game
-

<user.letter> <user.letter>:
    user.full_grid_select(letter_1 + letter_2, -1, "")
    user.full_grid_place_window()
    user.full_grid_activate()


<number> <user.letter> <user.letter>:
    user.full_grid_select(letter_1 + letter_2, number, "")
    user.full_grid_place_window()
    user.full_grid_activate()

# commonly heard as noises
#^<user.letter>$: pass
#^<user.word>$: pass
#(pie | back): pass

#parrot(tch): 
#    user.super_click()