app: mGBA
mode: user.game
-

settings():
    key_wait = 20

(bang | banks | bank | than | hang | fan | tanks | bin | thanks | pan | fine | in): key("x")
(back | pack | track): key("z")
(pause | house | boss | horse): key("return")
select: key("backspace")
(trig | rig | trick) left: key("a")
trig right: key("s")

<user.arrow_keys>:
    user.walk(arrow_keys)

# homophones for arrow commands
opt free:
    user.walk("up")
    repeat(3)
downfall:
    user.walk("down")
    repeat(4) 
apter:
    user.walk("up")
    repeat(2)
<user.arrow_keys> fall: 
    user.walk(arrow_keys)
    repeat(4)
<user.arrow_keys> to:    
    user.walk(arrow_keys)
    repeat(2)
lefter:
    user.walk("left")
    repeat(2)
caret: user.walk("right")
rightful:
    user.walk("right")
    repeat(4)

(spin | ben | it's been | and ) <user.arrow_keys>:
    key(arrow_keys)
    sleep(300ms)
    key(arrow_keys)

<user.arrow_keys> <number_small>:
    user.walk(arrow_keys)
    repeat(number_small - 1)

# Homophones for taking a certain number of steps
at <number_small>:
    user.walk(right)
    repeat(number_small)

mash: user.start_keypress("x", 1)
advance: user.start_keypress("x", 1, "True")
(chatter | chatta): user.start_keypress("x", 2, "True")
careful: user.start_keypress("x", 3)
(grind | grange): user.start_grinding()

double: user.multi_keypress("x", 0.3, 2)
triple: user.multi_keypress("x", 0.3, 3)

double back: user.multi_keypress("z", 1, 2)
triple back: user.multi_keypress("z", 2, 3)
(quad | court | what) back: user.multi_keypress("z", 2, 4)

run away: 
    key("x")
    sleep(5s)
    key("down")
    key("right")
    key("x")
    sleep(300ms)
    key("x")

(save game | safe day): 
    key("return")
    sleep(1s)
    user.start_keypress("down", 0.4)

(pokeball | enemy team): key("a")

pokemon: 
    key("return")
    sleep(1s)
    user.press_key_until_image_appears("/home/jarrod/Pictures/click_symbols/pokemon_menu.png", "down", 0.5, "x")