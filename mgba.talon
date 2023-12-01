app: mGBA
mode: user.game
-

settings():
    key_wait = 20

bang: key("x")
back: key("z")
start: key("return")
select: key("backspace")
trig left: key("a")
trig right: key("s")

<user.arrow_keys>:
    user.walk(arrow_keys)

(spin | ben ) <user.arrow_keys>:
    key(arrow_keys)
    sleep(300ms)
    key(arrow_keys)

<user.arrow_keys> <number_small>:
    user.walk(arrow_keys)
    repeat(number_small - 1)

(loop | lit ) bang: user.start_keypress()