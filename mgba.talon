app: mGBA
mode: user.game
-

settings():
    key_wait = 20

(bang | bank | both | by | banks | than | hang | fan | tanks | bin | thanks | pan | fine | in | bird | thank | bin | burn): key("x")
^(back | buck | pack | track)$: key("z")
(pause | house | boss | horse | course): key("return")
select: key("backspace")
(trig | rig | trick) left: key("a")
trig right: key("s")

garrett: pass
parkman: pass 
perk amon: pass
peak: pass
safety: pass
bubble: pass
become: pass


<user.arrow_keys>:
    user.walk(arrow_keys)

<user.arrow_keys> in:
    user.walk(arrow_keys)
    repeat(7)

dope: key("down")

# homophones for arrow commands
opt free:
    user.walk("up")
    repeat(3)
(downfall | stand for):
    user.walk("down")
    repeat(3) 
apter:
    user.walk("up")
    repeat(2)
<user.arrow_keys> fall: 
    user.walk(arrow_keys)
    repeat(4)
<user.arrow_keys> to:    
    user.walk(arrow_keys)
    repeat(1)
(lefter | left her):
    user.walk("left")
    repeat(2)
caret: user.walk("right")
rightful:
    user.walk("right")
    repeat(3)
right it: 
    user.walk("right")
    repeat(8)
not for:    
    user.walk("left")
    repeat(4)
don't ice:
    user.walk("down")
    user.walk("down")
spin rat:
    user.walk("right")
    user.walk("right")
wolfed: user.walk("left")
rut: user.walk("right")
girlish: user.walk("right")


(spin | ben | it's been | and ) <user.arrow_keys>:
    key(arrow_keys)
    sleep(300ms)
    key(arrow_keys)

<user.arrow_keys> <number_small>:
    user.walk(arrow_keys)
    repeat(number_small - 1)

# Homophones for taking a certain number of steps
(rat) <number_small>:
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

gop: key("up")

(mash | ash | mush): user.press_key_until_image_appears("/home/jarrod/Pictures/click_symbols/dialog_options.png", "x", 1, "stop")
(preview | previn | breathe | brave you | pre be | privy | pray he | may be | pretty | i've ya) next: user.press_key_until_image_appears("/home/jarrod/Pictures/click_symbols/about_to_use.png", "x", 3, "stop")
chicken dinner: user.press_key_until_image_appears("/home/jarrod/Pictures/click_symbols/pokemon_defeated.png", "x", 2, "postmortem")
(advance | advents): user.start_keypress("x", 1, "True")
(chatter | hot up | chatta | challa | ca | hot up | car up | sit up): user.start_keypress("x", 2, "True")
careful: user.start_keypress("x", 3)
(grinding | grind in | caret in): user.start_grinding()
breeding: user.start_breeding()

(double | Tuttle | stubble | dope): user.multi_keypress("x", 0.3, 2)
threesome: user.multi_keypress("x", 0.3, 3)

double back: user.multi_keypress("z", 1, 2)
triple back: user.multi_keypress("z", 2, 3)
(quad | court | what | quat) back: user.multi_keypress("z", 2, 6)

(run away | fan in): 
    key("x")
    user.press_key_until_image_appears("/home/jarrod/Pictures/click_symbols/fight.png", "1", 1, "run")

run grind:
    user.start_grinding("True") 

(save game | safe day | save dam | safe game | save them): 
    key("return")
    sleep(1s)
    user.start_keypress("down", 0.4)

(pokeball | quick able | enemy team | pickup | click able): key("a")

(pokemon | rat one | back on | quick amon ): 
    key("return")
    sleep(1s)
    key("up")
    sleep(1s)
    user.press_key_until_image_appears("/home/jarrod/Pictures/click_symbols/pokemon_menu.png", "down", 1, "x")

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

(fulbright | hold rat): user.hold_arrow("right")
(hold them): user.hold_arrow("down")

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
    sleep(1s)
    key("down")
    sleep(1s)
    key("x")

(navigator | letter go up):
    key("return")
    sleep(1s)
    key("right")
    sleep(1s)
    key("x")


switch (poke | park):
    key("x")
    sleep(200ms)
    user.press_key_until_image_appears("/home/jarrod/Pictures/click_symbols/switch.png", "down", 1, "x")

(move relearn | a free fan):
    key("x")
    sleep(200ms)
    user.press_key_until_image_appears("/home/jarrod/Pictures/click_symbols/move_relearn.png", "up", 1, "x")

(big | leak | back | buck | pack | sit | thank | bit | he | pick) <user.arrow_keys>:
    user.walk(arrow_keys)
    repeat(11)

pickup:
    user.walk("up")
    repeat(11)

(egret | big rat | tigrett | secret):
    user.walk("right")
    repeat(11)

country:
    user.walk("down")
    repeat(3)

bitten:
    user.walk("down")
    repeat(11)

downtime:
    user.walk("down")
    repeat(10)

skip doubles: user.press_key_until_image_appears("/home/jarrod/Pictures/click_symbols/do.png", "x", 2.5, "stop")

begin game:
    key("return")
    sleep(5s)
    key("return")
    sleep(3s)
    key("x")

a pat:
    user.walk("up")
    repeat(8)

test:
    result = user.image_appeared_on_screen("/home/jarrod/Pictures/click_symbols/wild.png")
    app.notify(result)

found <user.number_small>:
    user.walk("down")
    repeat(number_small)

continuous scroll: user.press_key_until_image_appears("/home/jarrod/Pictures/click_symbols/cancel.png", "down", 0.5, "stop")

(keep current| keep cart | kip current | cake current | kit cart | ca caret | cake cart):
    key("x")
    sleep(2s)
    key("down")
    sleep(1s)
    key("x")

give item:
    sleep(1s)
    key("x")
    sleep(1s)
    user.press_key_until_image_appears("/home/jarrod/Pictures/click_symbols/give.png", "down", 1, "x")

(box next | banks rat) <number_small>:
    user.box_nav("right")
    repeat(number_small - 1)

box previous <number_small>:
    user.box_nav("left")
    repeat(number_small - 1)

poke effort:
    key("x")
    sleep(1s)
    key("x")
    sleep(2s)
    key("right")
    sleep(1s)
    key("x")

effort training: user.multi_keypress("x", 0.3, 5) 

fishing: 
   user.stop_image_wait_keypress() 
   key("backspace") 
   sleep(500ms)
   key("a")
   sleep(5s) 
   key("x")
    
(poke rider | pork rata | pan caret | pan chatta | ca chatta): 
   user.stop_image_wait_keypress() 
   key("backspace") 
   sleep(500ms)
   key("backspace") 

item finder: 
   user.stop_image_wait_keypress() 
   key("backspace") 
   sleep(500ms)
   key("s") 
   sleep(2s)
   key("x") 
   sleep(2s)
   key("x") 

(poke | click) scan:
    key("s")

# Enter battle, throw a rock, then throw a safari ball
safari:
    key("x")
    sleep(2s)
    key("down")
    key(500ms)
    key("x")
    sleep(7s)
    key("up")
    sleep(500ms)
    key("x")

(mega evolve | megara alf):
    key("x")
    sleep(500ms)
    key("return")
    sleep(500ms)
    key("x")

cave diver:
    user.multi_keypress("x", 1, 17)

gift of life:
   user.press_key_until_image_appears("/home/jarrod/Pictures/click_symbols/fools.png", "x", 1, "stop")
 
no for an answer:
    user.press_key_until_image_appears("/home/jarrod/Pictures/click_symbols/answer.png", "x", 1, "x")