import time
import random
import threading
from talon import Module, actions, ctrl

mod = Module()
breed_thread = None
keep_breeding = False

def breed():
    while keep_breeding:
        actions.key("down:down")
        time.sleep(5)
        actions.key("down:up")
        actions.key("up:down")
        time.sleep(5)
        actions.key("up:up")

@mod.action_class
class Actions:
    def start_breeding():
        """Start walking around in circles."""
        global breed_thread, keep_breeding
        # Stop any current button mashing before starting to breed
        actions.user.stop_keypress()
        actions.user.stop_image_wait_keypress()
        keep_breeding = True
        if breed_thread is None or not breed_thread.is_alive():
            breed_thread = threading.Thread(target=breed)
            breed_thread.start()

    def stop_breeding():
        """Stop pressing the X key"""
        global keep_breeding
        keep_breeding = False