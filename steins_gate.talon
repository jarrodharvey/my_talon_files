mode: user.game
app: steam_app_412830
-

exit phone:
    user.super_right()
    sleep(1s)
    user.super_right()
    sleep(1s)
    user.super_right()
    sleep(1s)
    user.super_right()
    sleep(1s)
    user.super_right()

symbol phone: 
    user.mouse_helper_move_image_relative("/home/jarrod/Pictures/click_symbols/gate_phone.png")
    user.super_click()