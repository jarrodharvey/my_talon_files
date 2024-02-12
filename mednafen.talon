app: mednafen
mode: user.game
-

settings():
    key_wait = 20

# x button
(bang | bran | burn | spang | bank | banks | bin | burn | hang): key("return") 

# o button
^(back | buck | pack | track)$: key("a")

# start
pause: key("s")

# Square button
menu: key(";")

#  triangle button
(guide | cancel): key("q")

# Cardinal directions
^{user.cardinal_direction}$: user.diagonal(cardinal_direction, cardinal_direction, 0, "True") 
^{user.cardinal_direction} <number>$: user.diagonal(cardinal_direction, cardinal_direction, number, "False") 

# Other cardinal directions
^(northeast | next | mixed | no fast) [hold]$: user.diagonal("up", "right", 0, "True") 
^(southeast | sex | six | texts | solace | no fast | selfish) [hold]$: user.diagonal("right", "down", 0, "True") 
^(northwest | now) [hold]$: user.diagonal("up", "left", 0, "True")
^(southwest | swish | bush) [hold]$: user.diagonal("left", "down", 0, "True")

^(northeast | next | mixed) <number>$: user.diagonal("up", "right", number, "False") 
^(southeast | sex | six | texts | solace) <number>$: user.diagonal("right", "down", number, "False") 
^(northwest | now | new) <number>$: user.diagonal("up", "left", number, "False")
^(southwest | swish) <number>$: user.diagonal("left", "down", number, "False")

sector: user.diagonal("right", "down", 2, "False") 

###

(repeat that | twice): core.repeat_command(1)

save game state: key(f5)
load game state: key(f7)

(double | Tuttle | stubble | dope): user.multi_keypress("return", 0.3, 2)
triple: user.multi_keypress("return", 0.3, 3)
quadruple: user.multi_keypress("return", 0.3, 4)

ability:
    key("up:down")
    sleep(1s)
    key("return")
    sleep(1s)
    user.game_stop()

examine:
    key("left:down")
    sleep(1s)
    key("return")
    sleep(1s)
    user.game_stop()

use items:
    key("down:down")
    sleep(1s)
    key("return")
    sleep(1s)
    user.game_stop()

defend:
    key("right:down")
    sleep(1s)
    key("return")
    sleep(1s)
    user.game_stop()

runaway:
    key("u:down")
    sleep(1s)
    key("return")
    sleep(1s)
    key("u:up")
    user.game_stop()

(quad | court | what | quat) back: user.multi_keypress("a", 2, 4)

attack: user.write_to_repeat_file("Return", 0.5)
conversation: user.write_to_repeat_file("Return", 1.5)

puppy: user.hud_publish_content('puppy')

kitten: user.hud_disable_id('Text panel')