app: steam_app_1173810
mode: user.game
-

settings():
    key_wait = 9

(bang | spang | bank | banks | bin | burn | hang): key("enter")

^(back | buck | pack | track)$: key("backspace")

(repeat that | twice): core.repeat_command(1)

previous page: key("z")
next page: key("x")

minimap: key("space")

click <user.timestamped_prose>$:
    user.move_cursor_to_word(timestamped_prose)
    mouse_click(0)
    sleep(1)
    mouse_click(0)

(egret | big rat | tigrett | secret):
    user.walk("right")
    repeat(11)

(quad | court | what | quat) back: user.multi_keypress("backspace", 2, 6)
corbett: user.multi_keypress("backspace", 2, 6)

pause:
    mimic("stop")
    key("space")

(double | Tuttle | stubble | dope): user.multi_keypress("enter", 0.7, 2)

(chatter | hot up | chatta | challa | ca | hot up | car up | sit up): user.start_keypress("enter", 4, "False", "True")

(menu | men you): key("tab")

(quad | court | what | quat) back: user.multi_keypress("backspace", 2, 6)

save game:
    key("tab")
    sleep(1s)
    user.mouse_helper_move_image_relative("/home/jarrod/Pictures/click_symbols/quick_save.png") 
    mouse_click(0)
    sleep(1s)
    mouse_click(0)
    sleep(2s)
    user.mouse_helper_move_image_relative("/home/jarrod/Pictures/click_symbols/ff5_yes.png") 
    mouse_click(0)
    sleep(1s)
    mouse_click(0)
    key("enter")
    sleep(1s)
    key("backspace")

(equip | the quip | a quip):
    key("tab")
    sleep(1s)
    key("down")
    key("down")
    key("enter")

battle: 
    user.press_key_until_image_appears("/home/jarrod/Pictures/click_symbols/ff_enter.png", "enter", 1, "enter")
    sleep(2)
    user.press_key_until_image_disappears("/home/jarrod/Pictures/click_symbols/ff_enter.png", "enter", 1, "enter")
#(battle | bubble | buttle): key("q")
celebrate: user.press_key_until_image_disappears("/home/jarrod/Pictures/click_symbols/ff_enter.png", "enter", 1, "enter")

optimal:
    user.mouse_helper_move_image_relative("/home/jarrod/Pictures/click_symbols/ff_optimal.png")  
    mouse_click(0)
    sleep(1)
    mouse_click(0)

(mash | ash | mush): user.press_key_until_image_appears("/home/jarrod/Pictures/click_symbols/dialog_options.png", "enter", 1, "stop")