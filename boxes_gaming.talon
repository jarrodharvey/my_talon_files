tag: user.boxes_gaming
mode: user.game 
-

# Boxes
^boxes$: 
    user.flex_grid_setup_boxes()
    #user.flex_grid_box_config_change("threshold", 40)
^box <number>$: 
    user.flex_grid_box_config_change("threshold", 40)
    user.flex_grid_go_to_box(number or 1, 0)
    sleep(2s)
    user.flex_grid_setup_boxes()
^double <number>$:
    user.flex_grid_go_to_box(number or 1, 0)
    sleep(30ms)
    mouse_click(0)
^visit <number>$: 
    user.flex_grid_go_to_box(number or 1, -1)
^(clean | claim | quay | play | quaint | queen)$: 
    user.flex_grid_boxes_toggle(0)
