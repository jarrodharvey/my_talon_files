app: ScarletHollow
mode: user.game
-

test: app.notify("hello")

settings: user.click_spot("settings")
return: user.click_spot("return")
save game: user.click_spot("save")
dialogue: user.move_to_spot("dialogue")

<user.arrow_keys> <number_small>:
    key(arrow_keys)
    repeat(number_small - 1)

ante: key("enter")

down too:
    key("down")
    repeat(1)

(bang): key("enter")