from talon import Module, actions, ctrl
import time

mod = Module()

mod.mode("game", desc="Gaming mode")

@mod.action_class
class Actions:
    def super_click():
        """Click the mouse"""
        #actions.mouse_click(0)
        ctrl.mouse_click(button=0, down=True)
        time.sleep(1)
        ctrl.mouse_click(button=0, up=True)
    def super_right():
        """Click the right mouse"""
        #actions.mouse_click(0)
        ctrl.mouse_click(button=1, down=True)
        time.sleep(1)
        ctrl.mouse_click(button=1, up=True)
    def walk(arrow_dir: str):
        """Walk in a direction"""
        actions.key(f"{arrow_dir}")
        time.sleep(0.3)
    def hold_arrow(key: str):
        """Holds down a specified arrow key"""
        actions.key(f"{key}:down")
    def dialogue_triangle_on_screen():
        """Detects if the Pokemon dialogue triangle is on screen"""
        # Note: This only works when playing Pokemon Full Screen. If you're playing in a window, you'll need to change the image.
        triangle_coordinates = actions.user.mouse_helper_find_template_relative("/home/jarrod/Pictures/click_symbols/dialogue_triangle.png")
        return(len(triangle_coordinates) > 0)
    def image_appeared_on_screen(image_path: str):
        """Detects if an image appears on screen"""
        # returns true with a specific image of piece on the screen.
        image_coordinates = actions.user.mouse_helper_find_template_relative(image_path)
        return(len(image_coordinates) > 0)
    def multi_keypress(key_to_press: str, interval: float, times: int):
        """Presses a key multiple times"""
        for i in range(times):
            actions.key(key_to_press)
            time.sleep(interval)