app: Desmume
mode: user.game
-

tag(): user.cardinal_directions
tag(): user.user_arrows
tag(): user.boxes_gaming
settings():
    key_wait = 30

# Confirm is x and back is z
parrot(click): 
    user.game_stop()
    key("x")
parrot(tch): 
    user.game_stop()
    key("z")

start: key("return")
menu: 
    key("s")
    sleep(1s)
    user.flex_grid_setup_boxes()

(mash | match): user.write_to_repeat_file("x", 1)
caution: user.write_to_repeat_file("z", 2)

^<number>$: 
    user.flex_grid_go_to_box(number or 1, 0)
    sleep(250ms)
    user.flex_grid_setup_boxes()
    #user.flex_grid_box_config_change("threshold", 40)

^bag$: 
    user.move_to_spot("pokemon bag")
    user.super_click()
    sleep(1s)
    user.flex_grid_setup_boxes()
    user.flex_grid_box_config_change("threshold", 40)

^battle$: 
    user.move_to_spot("pokemon fight")
    user.super_click()
    sleep(2s)
    user.flex_grid_setup_boxes()

^run$: 
    user.move_to_spot("pokemon run")
    user.super_click()

^pokemon$: 
    user.move_to_spot("pokemon")
    user.super_click()

^save game$: 
    key("s")
    sleep(1s)
    key("right")
    key("down")
    key("down")
    key("x")
    sleep(3s)
    key("x")

(double | bubble | Tuttle | stubble | dope): user.multi_keypress("x", 1.5, 2)

(quad | court | what | quat) back: user.multi_keypress("z", 2, 5)

triple: 
    user.game_stop()
    user.multi_keypress("x", 2, 3)

^keep battling$: 
    key("down")
    key("down")
    key("x")

^healing$: 
    user.game_stop() 
    user.multi_keypress("x", 2, 4)  
    sleep(15s)
    user.multi_keypress("x", 2, 3)  

^(grinding | grind in | caret in)$: user.start_grinding()

^pokemon$: 
    key("s")
    sleep(1s)
    key("down")
    key("x")
    sleep(2s)
    user.flex_grid_box_config_change("threshold", 40)

(bang | thank | fine | base | bran | burn | spang | bank | banks | bin | burn | hang)$: 
    key("x") 
    user.flex_grid_boxes_toggle(0)