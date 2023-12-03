import time
import threading
from talon import Module, actions, ctrl

mod = Module()
keypress_thread = None
keep_pressing = False

def press_key(image_to_stop_on: str, key_to_press: str, interval: float, final_button_combo: str):
    while keep_pressing:
        if actions.user.image_appeared_on_screen(image_to_stop_on):
            # If the image is not on screen, stop pressing the key
            actions.user.stop_image_wait_keypress(final_button_combo, False)
        actions.key(key_to_press)
        time.sleep(interval)
  
@mod.action_class
class Actions:
    def press_key_until_image_appears(image_to_stop_on: str, key_to_press: str, interval: float, final_button_combo: str):
        """Press a key until image_to_stop_on appears on screen"""
        global keypress_thread, keep_pressing
        # Stop any grinding before starting to press the key
        actions.user.stop_grinding()
        actions.user.stop_keypress()
        # Convert stop_on_no_triangle from string to boolean
        keep_pressing = True
        if keypress_thread is None or not keypress_thread.is_alive():
            keypress_thread = threading.Thread(target=press_key, args=(image_to_stop_on, key_to_press, interval, final_button_combo))
            keypress_thread.start()

    def stop_image_wait_keypress(final_button_combo: str = "stop", interval: float = 0.3):
        """Stop pressing the key"""
        global keep_pressing
        keep_pressing = False
        match final_button_combo:
            case "stop":
                return
            case "x":
                actions.key("x")