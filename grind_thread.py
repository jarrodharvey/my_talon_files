import time
import random
import threading
from talon import Module, actions, ctrl

mod = Module()
grind_thread = None
keep_grinding = False

def grind(run_away: bool = False):
    while keep_grinding:
        if actions.user.image_appeared_on_screen("/home/jarrod/Pictures/click_symbols/bw_online.png"): 
            actions.key("x")
            time.sleep(2) 
        else:
            directions = ["up", "right", "down", "left"]
            for direction in directions:
                [actions.user.walk(direction) for _ in range(2)]

@mod.action_class
class Actions:
    def start_grinding(run_away: str = "False"):
        """Start walking around in circles."""
        # Convert run_away from string to boolean
        run_away = run_away.lower() in ["true", "1", "yes"]
        global grind_thread, keep_grinding
        # Stop any current button mashing before starting to grind
        actions.user.stop_keypress()
        actions.user.stop_image_wait_keypress()
        keep_grinding = True
        if grind_thread is None or not grind_thread.is_alive():
            grind_thread = threading.Thread(target=lambda: grind(run_away))
            grind_thread.start()

    def stop_grinding():
        """Stop pressing the X key"""
        global keep_grinding
        keep_grinding = False