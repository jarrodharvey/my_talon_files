app: librewolf-default
mode: user.game
-

# I use this to play aaonline

tag(): browser
tag(): user.boxes_gaming

(mash | match): user.write_to_repeat_file("space", 4)
skip: user.write_to_repeat_file("space", 0.2)

^<number>$: 
    user.flex_grid_go_to_box(number or 1, 0)
    sleep(1s)
    user.flex_grid_setup_boxes()

[left] (touch | click) <user.timestamped_prose>$:
    user.click_text(timestamped_prose)

^down$: 
    user.move_to_spot("court record")
    user.mouse_scroll_down()
    repeat(20)
^up$: 
    user.move_to_spot("court record")
    user.mouse_scroll_up()
    repeat(20)
^left$: user.click_spot("attorney left")
^right$: user.click_spot("attorney right")

^court record$: user.move_to_spot("court record")

^press$: user.click_spot("attorney press")
^present$:
    user.click_spot("attorney present")
    user.flex_grid_setup_boxes()

hints on [{user.rango_hints_toggle_levels}]: 
  user.rango_command_without_target("enableHints", rango_hints_toggle_levels or "global")
hints off [{user.rango_hints_toggle_levels}]: 
  user.rango_command_without_target("disableHints", rango_hints_toggle_levels or "global")
