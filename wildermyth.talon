app: Wildermyth
mode: user.game
-

^test$: app.notify("hello")

# Boxes
boxes: user.flex_grid_setup_boxes()
^<number>$: 
    user.flex_grid_go_to_box(number or 1, 0)
    user.flex_grid_setup_boxes()
box righty <number>: user.flex_grid_go_to_box(number or 1, 1)

(soup | sick | so | sit):
    user.game_stop()
    user.full_grid_place_window()
    user.full_grid_activate()

clean: 
    user.flex_grid_boxes_toggle(0)
    user.full_grid_close()

^(back | buck | pack | track)$: key("z")
cancel: key("escape")
(bang | thank | fine | base | bran | burn | spang | bank | banks | bin | burn | hang): key("return") 

(mash | match): user.write_to_repeat_file("Return", 7)