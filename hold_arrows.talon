mode: user.game
-
(hold | bold | old | home | all | bolt | hot) <user.arrow_keys>: user.hold_arrow(arrow_keys) 

stop:
    key("left:up")
    key("right:up")
    key("up:up")
    key("down:up")
    user.stop_keypress()
    user.stop_grinding()
    user.stop_image_wait_keypress()