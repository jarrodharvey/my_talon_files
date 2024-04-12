app: Wildermyth
mode: user.game
-

settings():
    key_wait = 30

^test$: app.notify("hello")

^<user.letter>$: key(letter)
^<number>$: key("{number}")

# Boxes
boxes: user.flex_grid_setup_boxes()
^box <number>$: 
    user.flex_grid_go_to_box(number or 1, 0)
    sleep(1)
    user.flex_grid_setup_boxes()
^visit <number>$: 
    user.flex_grid_go_to_box(number or 1, -1)
    sleep(1)
    user.flex_grid_setup_boxes()

(clean | claim | quay | play | quaint | queen): 
    user.flex_grid_boxes_toggle(0)
    user.full_grid_close()

^(back | brack | buck | pack | track)$: key("escape")
(bang | fun | thank | fine | base | bran | burn | spang | bank | banks | bin | burn | hang): key("return") 

(story): user.write_to_repeat_file("Return", 9)

explore <user.arrow_keys>:
    user.explore_direction(arrow_keys)

move: key("`")

^(hide | hired | pie | hard)$: user.move_to_spot("unobtrusive")
pause: user.move_to_spot("pause")

zoom out: 
    user.mouse_scroll_down()
    repeat(5)
zoom in: 
    user.mouse_scroll_up()
    repeat(5)

party <number>: key("f{number}")

party dismiss: 
    user.mouse_helper_move_image_relative("/home/jarrod/Pictures/click_symbols/wild_cross.png")
    mouse_click(0)

party next: 
    user.mouse_helper_move_image_relative("/home/jarrod/Pictures/click_symbols/wild_character_next.png")
    mouse_click(0)

party previous: 
    user.mouse_helper_move_image_relative("/home/jarrod/Pictures/click_symbols/wild_previous.png")
    mouse_click(0)

wheel down: user.mouse_scroll_down()
wheel up: user.mouse_scroll_up()