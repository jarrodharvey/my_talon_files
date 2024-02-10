app: mednafen
mode: user.game
-

settings():
    key_wait = 20

key(esc): pass

# x button
(bang | bran | burn | spang | bank | banks | bin | burn | hang): key("return") 

# o button
^(back | buck | pack | track)$: key("q")

# start
pause: key("s")

# Other cardinal directions
^(northeast | no fast) [hold]$: user.diagonal("up", "right", 0, "True") 
^(southeast | solace) [hold]$: user.diagonal("right", "down", 0, "True") 
^northwest [hold]$: user.diagonal("up", "left", 0, "True")
^southwest [hold]$: user.diagonal("left", "down", 0, "True")

^(northeast | next) <number>$: user.diagonal("up", "right", number, "False") 
^(southeast | sell | solace) <number>$: user.diagonal("right", "down", number, "False") 
^(northwest | now) <number>$: user.diagonal("up", "left", number, "False")
^(southwest | swish) <number>$: user.diagonal("left", "down", number, "False")

###

(repeat that | twice): core.repeat_command(1)

save game state: key(f5)
load game state: key(f7)

(double | Tuttle | stubble | dope): user.multi_keypress("return", 0.3, 2)

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