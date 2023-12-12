import time
import threading
from talon import Module, actions, ctrl

mod = Module()
grind_thread = None
keep_grinding = False

def grind():
    while keep_grinding:
        image_directory = "/home/jarrod/Pictures/click_symbols/"
        image_files = ["wild.png", "pokemon_what_will.png"]

        for image_file in image_files:
            image_path = image_directory + image_file
            if actions.user.image_appeared_on_screen(image_path):
                actions.user.stop_keypress()
                actions.user.stop_grinding()
                actions.user.stop_image_wait_keypress()
                break
        
        directions = ["up", "right", "down", "left"]

        for direction in directions:
            [actions.user.walk(direction) for _ in range(3)]

@mod.action_class
class Actions:
    def start_grinding():
        """Start walking around in circles."""
        global grind_thread, keep_grinding
        # Stop any current button mashing before starting to grind
        actions.user.stop_keypress()
        actions.user.stop_image_wait_keypress()
        keep_grinding = True
        if grind_thread is None or not grind_thread.is_alive():
            grind_thread = threading.Thread(target=grind)
            grind_thread.start()

    def stop_grinding():
        """Stop pressing the X key"""
        global keep_grinding
        keep_grinding = False