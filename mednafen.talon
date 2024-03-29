app: mednafen
mode: user.game
-

settings():
    key_wait = 20

# x button
(bang | thank | fine | base | bran | burn | spang | bank | banks | bin | burn | hang): key("return") 

# o button
^(back | buck | pack | track)$: key("a")

# start
pause: key("s")

# Square button
(menu | mini): key(";")

#  triangle button
(guide | cancel): key("q")

# Cardinal directions
^{user.cardinal_direction}$: user.diagonal(cardinal_direction, cardinal_direction, 0, "True") 
^{user.cardinal_direction} <number>$: user.diagonal(cardinal_direction, cardinal_direction, number, "False") 

# Other cardinal directions
^(northeast | next | vext | mixed | no fast) [hold]$: user.diagonal("up", "right", 0, "True") 
^(southeast | sex | dex | six | texts | solace | no fast | selfish) [hold]$: user.diagonal("right", "down", 0, "True") 
^(northwest | now | no) [hold]$: user.diagonal("up", "left", 0, "True")
^(southwest | swish | swiss | switch | bush) [hold]$: user.diagonal("left", "down", 0, "True")

^(northeast | next | mixed) <number>$: user.diagonal("up", "right", number, "False") 
^(southeast | sex | six | texts | solace) <number>$: user.diagonal("right", "down", number, "False") 
^(northwest | now | new) <number>$: user.diagonal("up", "left", number, "False")
^(southwest | swish | switch) <number>$: user.diagonal("left", "down", number, "False")

sector: user.diagonal("right", "down", 2, "False") 
ex two sex two sex one north menu
swish tor: user.diagonal("down", "left", 2, "False") 
sex full: user.diagonal("down", "right", 4, "False") 
vex wife: user.diagonal("up", "right", 5, "False") 
not true: user.diagonal("up", "left", 2, "False") 
now full: user.diagonal("up", "left", 4, "False") 
swish full: user.diagonal("down", "left", 4, "False") 
vector: user.diagonal("up", "right", 2, "False") 
next her: user.diagonal("up", "right", 2, "False") 
next full: user.diagonal("up", "right", 4, "False") 
noite: user.diagonal("left", "up", 2, "False") 
sector: user.diagonal("down", "right", 2, "False") 
now true: user.diagonal("up", "left", 2, "False") 
dexter: user.diagonal("up", "right", 2, "False") 



###

(repeat that | twice): core.repeat_command(1)

save game state: key(f5)
load game state: key(f7)

(double | bubble | Tuttle | stubble | dope): user.multi_keypress("return", 0.3, 2)
triple: user.multi_keypress("return", 0.3, 3)
quadruple: user.multi_keypress("return", 0.3, 4)

ability:
    user.game_stop()
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

use (items | item):
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
    user.game_stop()
    key("u:down")
    sleep(1s)
    key("return")
    sleep(1s)
    key("u:up")
    user.game_stop()

(quad | court | what | quat) back: user.multi_keypress("a", 2, 5)
queb: user.multi_keypress("a", 3, 5)

attack: user.write_to_repeat_file("Return", 0.2)
conversation: user.write_to_repeat_file("Return", 1.5)

camera left:
    user.game_stop()
    key("u:down")
    key("left:down")
(camera right | coma right | come or writ | coma rut | camera rot):
    user.game_stop()
    key("u:down")
    key("right:down")

threesome: user.multi_keypress("return", 0.3, 3)
foreskin: user.multi_keypress("return", 0.3, 4)

switch character: key("l")