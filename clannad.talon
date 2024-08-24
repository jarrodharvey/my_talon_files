app: steam_app_324160
mode: user.game
-

settings():
    key_wait = 45

tag(): user.user_arrows
tag(): user.boxes_gaming

(mash | match): user.write_to_repeat_file("Return", 4)

^save game$: 
    key("escape")
    sleep(1500ms)
    user.move_to_spot("clan save")
    sleep(1500ms)
    user.super_click()
    sleep(1500ms)
    user.move_to_spot("clan data")
    sleep(1500ms)
    user.super_click()
    sleep(1500ms)
    user.move_to_spot("clan yes")
    sleep(1500ms)
    user.super_click()
    sleep(1500ms)
    key("escape")
