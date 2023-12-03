mode: user.game
-
(hold | bold | old | home) <user.arrow_keys>: user.hold_arrow(arrow_keys) 

stop:
    key("left:up")
    key("right:up")
    key("up:up")
    key("down:up")
    user.stop_keypress()
    user.stop_grinding()