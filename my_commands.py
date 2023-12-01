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