import time
import threading
from talon import Module, actions, ctrl

mod = Module()
keypress_thread = None
keep_pressing = False

def press_key(key_to_press: str, interval: float, stop_on_no_triangle: bool = False):
    while keep_pressing:
        if actions.user.image_appeared_on_screen("/home/jarrod/Pictures/click_symbols/dialog_options.png"):
            # If the dialogue options are on screen, stop pressing the key
            actions.user.stop_keypress(key_to_press, False)
        actions.key(key_to_press)
        time.sleep(interval)
        if stop_on_no_triangle:
            if not actions.user.dialogue_triangle_on_screen():
                # There needs to be a final press to wrap up the dialogue
                actions.user.stop_keypress(key_to_press, True)

@mod.action_class
class Actions:
    def start_keypress(key_to_press: str, interval: float, stop_on_no_triangle: str = "False"):
        """Start pressing the X key once per second"""
        global keypress_thread, keep_pressing
        # Stop any grinding before starting to press the key
        actions.user.stop_grinding()
        # Convert stop_on_no_triangle from string to boolean
        stop_on_no_triangle = stop_on_no_triangle.lower() in ["true", "1", "yes"]
        keep_pressing = True
        if keypress_thread is None or not keypress_thread.is_alive():
            keypress_thread = threading.Thread(target=press_key, args=(key_to_press, interval, stop_on_no_triangle))
            keypress_thread.start()

    def stop_keypress(key_to_press: str = "x", final_press: bool = False):
        """Stop pressing the X key"""
        global keep_pressing
        keep_pressing = False
        if final_press:
            actions.key(key_to_press)
