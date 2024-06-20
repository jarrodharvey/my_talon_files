app: steam_app_632470
mode: user.game
-

tag(): user.cardinal_directions
tag(): user.user_arrows
settings():
    key_wait = 30

#(bang | fun | thank | fine | base | bran | burn | spang | bank | banks | bin | burn | hang)$: key("return") 
^(back | brack | buck | pack | track)$: key("escape")

^character$: key("c")
^inventory$: 
    key("i")
    sleep(1s)
    user.flex_grid_box_config_change("threshold", 40)
^thinking$: key("t")
^(journal | channel)$: key("j")
^help$: key("f1")
^map$: key("m")
^quick (save | safe)$: key("f5")

^zoom out$: 
    user.mouse_scroll_down()
    repeat(5)
^zoom in$: 
    user.mouse_scroll_up()
    repeat(5)

^(dialogue)$: user.write_to_repeat_file("Return", 10)

^(highlight | pilot)$: key("tab:down")
^release$: key("tab:up")

^<number_small>$: key("{number_small}")
^true$: key("2")
^want$: key("1")
^seventh$: key("7")
^for$: key("4")
 
^double$: 
    mouse_click(0)
    sleep(30ms)
    mouse_click(0)
    sleep(1s)
    user.flex_grid_box_config_change("threshold", 40)

# Boxes
^boxes$: user.flex_grid_setup_boxes()
^box <number>$: 
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
    user.full_grid_close() 

^items$: 
    user.move_to_spot("discord items")
    user.super_click()

^clothes$: 
    user.move_to_spot("disco clothes")
    user.super_click()

^tools$: 
    user.move_to_spot("disco tools")
    user.super_click()

^interact$: 
    user.move_to_spot("disco interact")
    user.super_click()

^quest map$: 
    user.move_to_spot("disco map")
    user.super_click()

^tasks$: 
    user.move_to_spot("disco tasks")
    user.super_click()

parrot(click): 
    user.attempt_image_click("/home/jarrod/Pictures/click_symbols/disco_continue_red.png")
    user.attempt_image_click("/home/jarrod/Pictures/click_symbols/disco_continue_purple.png")
    user.attempt_image_click("/home/jarrod/Pictures/click_symbols/disco_continue_yellow.png")
    user.attempt_image_click("/home/jarrod/Pictures/click_symbols/disco_continue_blue.png")
    user.attempt_image_click("/home/jarrod/Pictures/click_symbols/disco_end.png")

^[left] (touch | click) <user.timestamped_prose>$:
    user.click_text(timestamped_prose)

^take all$:
    key("return")