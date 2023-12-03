import time
import threading
from talon import Module, actions, ctrl

mod = Module()
grind_thread = None
keep_grinding = False

def grind():
    while keep_grinding:
        if actions.user.image_appeared_on_screen("/home/jarrod/Pictures/click_symbols/wild.png"):
            # If the wild Pokemon symbol is on screen, stop grinding 
            actions.user.stop_grinding()
        
        directions = ["up", "right", "down", "left"]

        for direction in directions:
            [actions.user.walk(direction) for _ in range(3)]

@mod.action_class
class Actions:
    def start_grinding():
        """Start walking around in circles."""
        global grind_thread, keep_grinding
        # Convert stop_on_no_triangle from string to boolean
        keep_grinding = True
        if grind_thread is None or not grind_thread.is_alive():
            grind_thread = threading.Thread(target=grind)
            grind_thread.start()

    def stop_grinding():
        """Stop pressing the X key"""
        global keep_grinding
        keep_grinding = False