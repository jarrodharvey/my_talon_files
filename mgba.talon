app: mGBA
mode: user.game
-

settings():
    key_wait = 20

(bang | banks | bank | than | hang | fan | tanks | bin | thanks): key("x")
back: key("z")
pause: key("return")
select: key("backspace")
(trig | rig) left: key("a")
trig right: key("s")

<user.arrow_keys>:
    user.walk(arrow_keys)

# homophones for arrow commands
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

(spin | ben | it's been ) <user.arrow_keys>:
    key(arrow_keys)
    sleep(300ms)
    key(arrow_keys)

<user.arrow_keys> <number_small>:
    user.walk(arrow_keys)
    repeat(number_small - 1)

mash: user.start_keypress("x", 1)
advance: user.start_keypress("x", 1, "True")
chatter: user.start_keypress("x", 2, "True")
careful: user.start_keypress("x", 3)

attack: 
    key("x")
    sleep(300ms)
    key("x")