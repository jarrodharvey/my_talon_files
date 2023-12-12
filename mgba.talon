app: mGBA
mode: user.game
-

settings():
    key_wait = 20

(bang | banks | bank | than | hang | fan | tanks | bin | thanks | pan | fine | in | bird): key("x")
(back | pack | track): key("z")
(pause | house | boss | horse | course): key("return")
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
    repeat(1)
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
(at | rat) <number_small>:
    user.walk("right")
    repeat(number_small)
<user.arrow_keys> for:
    user.walk(arrow_keys)
    repeat(3)
of the <user.number_small>:
    user.walk(arrow_keys)
    repeat(number_small - 1)
a free:
    user.walk("up")
    repeat(2)
<user.arrow_keys> fine:
    user.walk(arrow_keys)
    repeat(5)

mash: user.press_key_until_image_appears("/home/jarrod/Pictures/click_symbols/dialog_options.png", "x", 1, "stop")
preview next: user.press_key_until_image_appears("/home/jarrod/Pictures/click_symbols/about_to_use.png", "x", 2, "stop")
advance: user.start_keypress("x", 1, "True")
(chatter | chatta): user.start_keypress("x", 2.5, "True")
careful: user.start_keypress("x", 3)
(grind | grange): user.start_grinding()

(double | stubble | dope): user.multi_keypress("x", 0.3, 2)
triple: user.multi_keypress("x", 0.3, 3)

double back: user.multi_keypress("z", 1, 2)
triple back: user.multi_keypress("z", 2, 3)
(quad | court | what | quat) back: user.multi_keypress("z", 2, 5)

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

(pokemon | perk amon | back on | quick amon): 
    key("return")
    sleep(1s)
    user.press_key_until_image_appears("/home/jarrod/Pictures/click_symbols/pokemon_menu.png", "down", 0.5, "x")

inventory:
    key("return")
    sleep(1s)
    user.press_key_until_image_appears("/home/jarrod/Pictures/click_symbols/pokemon_bag.png", "down", 0.5, "x")

(nickname | hickman | tick name):
    mimic("stop")
    key("return")
    key("x")
    sleep(1s)
    key("x")
    sleep(1s)
    key("x")

fulbright: user.hold_arrow("right")

box moves:
    key("x")
    sleep(200ms)
    key("down")
    key("x")
    sleep(2s)
    key("right")
    key("right")
    key("right")

(poke | mark | work | park) moves:
    key("x")
    sleep(200ms)
    key("x")
    sleep(2s)
    key("right")
    key("right")
    key("right")

(box | honks | walks) (deposit | withdraw):
    key("x")
    sleep(1s)
    key("down")
    sleep(200ms)
    key("down")
    key("x")

computer:
    key("return")
    sleep(1s)
    key("right")
    sleep(500ms)
    key("down")
    key("down")
    sleep(1s)
    key("x")

switch (poke | park):
    key("x")
    sleep(200ms)
    key("down")
    key("x")

(big | back) <user.arrow_keys>:
    user.walk(arrow_keys)
    repeat(11)

test: 
    result = user.image_appeared_on_screen("/home/jarrod/Pictures/click_symbols/about_to_use.png")
    print(result)