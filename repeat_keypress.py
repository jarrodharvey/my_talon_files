import time
import threading
from talon import Module, actions, ctrl

mod = Module()
keypress_thread = None
keep_pressing = False

def press_key():
    while keep_pressing:
        actions.key("x")
        time.sleep(1)

@mod.action_class
class Actions:
    def start_keypress():
        """Start pressing the X key once per second"""
        global keypress_thread, keep_pressing
        keep_pressing = True
        if keypress_thread is None or not keypress_thread.is_alive():
            keypress_thread = threading.Thread(target=press_key)
            keypress_thread.start()

    def stop_keypress():
        """Stop pressing the X key"""
        global keep_pressing
        keep_pressing = False
