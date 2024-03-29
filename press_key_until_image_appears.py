import time
import threading
from talon import Module, actions, ctrl

mod = Module()
keypress_thread = None
keep_pressing = False

def run():
    actions.key("down")
    time.sleep(0.3)
    actions.key("right")
    time.sleep(0.3)
    actions.key("x")
    time.sleep(0.7)
    actions.key("x")

def press_key(image_to_stop_on: str, key_to_press: str, interval: float, final_button_combo: str):
    while keep_pressing:
        actions.key(key_to_press)
        time.sleep(interval)
        if actions.user.image_appeared_on_screen(image_to_stop_on):
            actions.user.stop_image_wait_keypress(final_button_combo, False)
  
@mod.action_class
class Actions:
    def press_key_until_image_appears(image_to_stop_on: str, key_to_press: str, interval: float, final_button_combo: str, stop_grinding: str = "True"):
        """Press a key until image_to_stop_on appears on screen"""
        global keypress_thread, keep_pressing
        # Stop any grinding before starting to press the key
        if stop_grinding.lower() in ["true", "1", "yes"]:
            actions.user.stop_grinding()
        actions.user.stop_keypress()
        if actions.user.image_appeared_on_screen(image_to_stop_on):
            actions.user.stop_image_wait_keypress(final_button_combo, False)
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
                return
            case "xx":
                actions.key("x")
                time.sleep(2)
                actions.key("x")
                return
            case "xlll":
                actions.key("x")
                time.sleep(2)
                actions.user.walk("left")
                actions.user.walk("left")
                actions.user.walk("left")
                return
            case "walk_up_20":
                for i in range(20):
                    actions.user.walk("up")
                return
            case "postmortem":
                actions.key("x")
                time.sleep(3)
                actions.key("x")
                time.sleep(3)
                actions.mimic("chatter")
                return
            case "run":
                run()
                return
            case "enter":
                actions.key("enter")
                return
