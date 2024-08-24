app: steam_app_251150
mode: user.game
-

tag(): user.cardinal_directions
tag(): user.user_arrows
settings():
    key_wait = 45

(bang | thank | fine | base | bran | burn | spang | bank | banks | bin | burn | hang): 
    key("space") 
    user.flex_grid_boxes_toggle(0)

parrot(click): 
    user.game_stop()
    key("space")
parrot(tch): 
    user.game_stop()
    key("ctrl")

^(mash | match)$: user.write_to_repeat_file("space", 1)
^dialogue$: user.write_to_repeat_file("space", 5)
^battle$: user.write_to_repeat_file("space", 2)

^(back | buck | pack | track)$: 
    key("ctrl")
    user.flex_grid_boxes_toggle(0)

^camp$: key("ctrl")

^rot [left] <number>$: 
    number_of_rotations = user.divide_by_forty_five(number)
    user.multi_keypress("z", 0.5, number_of_rotations)
^(rot | right) right <number>$: 
    number_of_rotations = user.divide_by_forty_five(number)
    user.multi_keypress("x", 0.5, number_of_rotations)
^rot right nine$: user.multi_keypress("x", 0.5, 2)

^show location$: key("shift")

^(notebook | netbook)$: key("b")

^recipes$: key("c")

^world map$: key("m")

^(zoom | soon)$:
    user.game_stop()
    key("v")

^monster guide$: key("n")

^turbo$: key("alt") 

^save game$: 
    key("ctrl")
    sleep(1s)
    user.move_to_spot("trails files")
    sleep(1s)
    user.super_click()
    sleep(1s)
    key("space")
    sleep(1s)
    key("space")
    sleep(1s)
    key("space")
    sleep(1s)
    key("up")
    sleep(1s)
    key("space")
    sleep(1s)
    user.multi_keypress("ctrl", 1, 3)

^stop$: user.game_stop()

^double back$: user.multi_keypress("ctrl", 2, 2)
^triple back$: user.multi_keypress("ctrl", 2, 3)

^click <user.timestamped_prose>$:
    user.click_text(timestamped_prose)

^go$: user.super_click(0.5)
^(travel | trouble)$: user.super_click(1)

^break <number>$:
    user.game_stop()
    key("{number}")
^(break tor | Procter)$: 
    user.game_stop()
    key(2)

^turbo$: key("alt:down")

(double | bubble | Tuttle | stubble | dope)$: user.multi_keypress("space", 1.5, 2)

^distance <number_small>$: user.set_travel_distance(number_small)
^dungeon$: user.set_travel_distance(5)
^town$: user.set_travel_distance(2)
^(precise | process)$: user.set_travel_distance(1)

^(purchase | sell item)$: 
    key("space")
    sleep(1s)
    key("space")
    sleep(1s)
    key("up")
    sleep(1s)
    key("space")
    sleep(1s)
    key("space")

^inventory$: 
    key("ctrl")
    sleep(1s)
    user.move_to_spot("trails items")
    sleep(1s)
    user.super_click()
    sleep(1s)
    key("space")

^equipment$: 
    key("ctrl")
    sleep(1s)
    user.move_to_spot("trails equip")
    sleep(1s)
    user.super_click()

^attack$: 
    user.game_stop()
    user.move_to_spot("trails attack")
    sleep(1s)
    user.super_click()

^(magic | metric)$: 
    user.game_stop()
    user.move_to_spot("trails art")
    sleep(1s)
    user.super_click()

^run <user.arrow_keys>$: 
    user.game_stop()
    user.move_to_spot("trails run")
    sleep(1s)
    user.super_click()
    sleep(2s)
    key("space")
    key("{arrow_keys}:down")

^victory$: user.multi_keypress("space", 1, 4)

^orbments$: user.trails_menu("trails magic")