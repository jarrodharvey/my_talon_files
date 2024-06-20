app: steam_app_1158850
mode: user.game
-

tag(): user.user_arrows
tag(): user.boxes_gaming
settings():
    key_wait = 30

(soup | sick | so | sit):
    user.game_stop()
    user.full_grid_select_screen(1)
    user.full_grid_activate()

(bang | thank | fine | base | bran | burn | spang | bank | banks | bin | burn | hang): 
    key("return") 
    user.flex_grid_boxes_toggle(0)

^(back | buck | pack | track)$: 
    key("z")
    user.flex_grid_boxes_toggle(0)
(quad | court | what | quat) back: user.multi_keypress("z", 2, 5)

court record: 
    key("e")
    sleep(2s)
    user.flex_grid_setup_boxes()
(objection | take that | got it | present):
    key("r")
    user.flex_grid_boxes_toggle(0)
(history | his tree): key("t")
(press | hold it | review scene): key("q")
(options | pause): key("g")
autoplay: key("f")
(magnify | examine | pursu | pursue): key("space")
review scene: key("q")
pit: key("r")
people: key("e")
spray: 
    user.super_click()
    sleep(1s)
    key("space")


look:
    user.super_click()
    sleep(1s)
    key("return")
    sleep(3s)
    key("return")

look left: key("b")
look right: key("m")
look up: key("h")
look down: key("n")


(spin | bin | it's been | been) {user.wasd_arrows}: user.start_keypress(wasd_arrows, 1)
zip {user.wasd_arrows}: 
    mimic("stop")
    sleep(1s)
    user.start_keypress(wasd_arrows, 0.5)

(mash | match): user.write_to_repeat_file("z", 2)
slow down: user.write_to_repeat_file("Return", 8)
(skip | gop): user.write_to_repeat_file("z", 0.2)
automate: user.write_to_repeat_file("f", 500)
point <user.arrow_keys> <number>:
    user.diagonal(arrow_keys, arrow_keys, number, "False")
    
(double | bubble | Tuttle | stubble | dope): user.multi_keypress("return", 1.5, 2)
double back: user.multi_keypress("z", 1.5, 2)
triple: user.multi_keypress("return", 2, 3)
(load | lord) game:
    key("g")
    sleep(1s)
    key("return")
    sleep(1s)
    key("down")
    sleep(1s)
    user.multi_keypress("return", 0.8, 3)

((save | shave) game | so okay):
    key("g")
    sleep(1s)
    key("return")
    sleep(1s)
    user.multi_keypress("return", 0.8, 3)
    sleep(3s)
    user.multi_keypress("z", 0.8, 4)

scan <user.arrow_keys>:
    user.multi_keypress(arrow_keys, 1, 5)

explore: user.start_random()

weft: key("left")

^<number>$: 
    user.flex_grid_go_to_box(number or 1, 0)
    sleep(1s)
    user.flex_grid_setup_boxes()
