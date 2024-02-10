app: ScarletHollow
mode: user.game
-

settings():
    user.mouse_continuous_scroll_amount = 200

test: app.notify("hello")

settings: user.click_spot("settings")
return: user.click_spot("return")
save game: 
    user.click_spot("save")
    sleep(1s)
    user.mouse_helper_move_image_relative("/home/jarrod/Pictures/click_symbols/empty_slot.png")
    mouse_click(0)
history: user.click_spot("history")
toggle: user.move_to_spot("toggle")
(dialogue | dialog): user.move_to_spot("dialogue")

<user.arrow_keys> <number_small>:
    key(arrow_keys)
    repeat(number_small - 1)

[go] <user.arrow_keys>: key(arrow_keys)

(downfall | stand for):
    user.walk("down")
    repeat(3) 

gor <user.arrow_keys>: key(arrow_keys)

ante: key("enter")

down too:
    key("down")
    repeat(1)

(bang | spang | bank | banks | bin | burn | hang): key("enter")

explore: user.start_keypress("down", 1)

stop:
    user.stop_keypress()

(repeat that | twice): core.repeat_command(1)
