mode: user.game
-
settings():
    key_wait = 5

tag(): user.rango_direct_clicking

^command mode$:
    mode.disable("user.game")
    mode.enable("command")

