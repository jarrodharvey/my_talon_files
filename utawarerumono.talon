app: steam_app_1151450
mode: user.game
-

settings():
    key_wait = 45

tag(): user.user_arrows
tag(): user.boxes_gaming

(bang | thank | fine | base | bran | burn | spang | bank | banks | bin | burn | hang)$: 
    key("space") 
    user.flex_grid_boxes_toggle(0)

parrot(click): key("space")

^(back | buck | pack | track)$: key("x")

(mash | match): user.write_to_repeat_file("space", 4)

^system$: key("escape")
^fight$: key("escape")

^save game$: 
    key("escape")
    sleep(2s)
    key("space")
    sleep(2s)
    key("space")
    sleep(2s)
    key("left")
    sleep(2s)
    key("space")
    sleep(2s)
    key("x")
    sleep(2s)
    key("x")

(quad | court | what | quat) back: user.multi_keypress("x", 2, 4)
triple back: user.multi_keypress("x", 2, 3)
back twice: user.multi_keypress("x", 2, 2)

^next$: key("e")
^next <number>$:
    key("e")
    repeat(number -1)

^view map$: key("r")
^unit details$: key("f")
^zeal cost$: key("f")

^rotate <user.arrow_keys>$:
    key("x:down")
    key(arrow_keys)
    key("x:up")

^view units$: key("r")

(double | bubble | Tuttle | stubble | dope): user.multi_keypress("space", 1.5, 2)
triple: user.multi_keypress("space", 2.5, 3)
^turn$: user.multi_keypress("space", 2.5, 3)

explore <user.arrow_keys>:
    user.explore_direction(arrow_keys)

double back: user.multi_keypress("z", 1, 2)

^camera$: key("z")

^cam up <number>$: 
    key("y")
    repeat(number - 1)
^cam down <number>$: 
    key("i")
    repeat(number - 1)
^cam left <number>$: 
    key("n")
    repeat(number - 1)
^cam right <number>$:   
    key("o")
    repeat(number - 1)

^allocate <number>$: 
    user.multi_keypress("right", 1, number)
    key("space")
    sleep(1s)
    key("left")
    key("space")