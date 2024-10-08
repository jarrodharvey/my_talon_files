from talon import Module, actions, ctrl
import time
import json

mod = Module()

mod.mode("game", desc="Gaming mode")

mod.list("cardinal_direction", "Match compass directions to arrows")
mod.tag("cardinal_directions", "Match compass directions to arrows")
mod.tag("boxes_gaming", "Used for boxes in gaming")
mod.tag("user_arrows", "Arrows for gaming")
mod.list("wasd_arrows", "Arrows for the wasd movement letters")

travel_distance = 1

def str_to_bool(s):
    # Converts a string to a boolean. 
    # Assumes 'true', 'yes', '1' are True, and 'false', 'no', '0' are False.
    # Case-insensitive comparison.
    if s.lower() in ('true', 'yes', '1'):
        return True
    elif s.lower() in ('false', 'no', '0'):
        return False
    else:
        raise ValueError("Cannot convert string to boolean: " + s)

@mod.action_class
class Actions:
    def super_click(duration: int = 0.05):
        """Click the mouse"""
        #actions.mouse_click(0)
        ctrl.mouse_click(button=0, down=True)
        time.sleep(duration)
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

    def ff_blue_on_screen():
        """Detects if the final fantasy blue dialogue color is on screen"""
        blue_coordinates = actions.user.mouse_helper_find_template_relative("/home/jarrod/Pictures/click_symbols/ff_blue.png")
        return(len(blue_coordinates) > 0)
    
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
    def box_nav(arrow_dir: str):
        """Switch boxes"""
        actions.key(f"{arrow_dir}")
        time.sleep(1)
    def game_stop():
        """Stop gaming mode actions"""
        actions.user.flex_grid_boxes_toggle(0)
        actions.key("left:up")
        actions.key("right:up")
        actions.key("up:up")
        actions.key("down:up")
        actions.key("u:up")
        actions.key("w:up")
        actions.key("a:up")
        actions.key("s:up")
        actions.key("d:up")
        actions.key("alt:up")
        actions.key("x:up")
        actions.user.stop_keypress()
        actions.user.stop_grinding()
        actions.user.stop_breeding()
        actions.user.stop_random()
        actions.user.stop_image_wait_keypress()
        actions.user.stop_image_disappear_keypress()
        actions.user.hud_disable_id('Text panel')
        actions.user.mouse_drag_end()
        return
    def diagonal(dir1: str, dir2: str, held_time: float = 0, hold: str = False):
        """Travel diagonally in a game"""
        hold = str_to_bool(hold)
        # The higher the hold_time_modifier, the faster the diagonal movement
        hold_time_modifier = 0.1 * travel_distance
        actions.user.game_stop()
        actions.key(f"{dir1}:down")
        actions.key(f"{dir2}:down")
        print("Held time: ", held_time)
        time.sleep(held_time * hold_time_modifier)
        if hold == False:
            actions.user.game_stop()
        return
    def set_travel_distance(distance: int):
        """Set the travel distance for diagonal movement"""
        global travel_distance
        travel_distance = distance
        app.notify(f"Travel distance set to {distance}")
    def write_to_repeat_file(button: str, wait_time: float):
        """Write button and wait_time to repeat.json"""
        actions.user.game_stop()
        repeat_file = "/home/jarrod/mint_scripts/repeat.json"
            # Data to be written
        data = {
            "button": button,
            "wait_time": wait_time
        }
        
        # Writing to repeat.json
        with open(repeat_file, 'w') as file:
            json.dump(data, file)
    def capitalize_first_letter(word: str):
        """Capitalizes the first letter of a word"""
        return word.capitalize()
    def sleep_hold(time: float):
        """Sleeps for a specified amount of time"""
        user.sleep_hold(1)
        time.sleep(time)
    def explore_direction(direction: str):
        """Go in the specified direction fifteen times and then go in the opposite direction fifteen times using arrow keys representation."""
    
        # Define the opposite directions for arrow keys
        opposite_directions = {
            'up': 'down',
            'down': 'up',
            'left': 'right',
            'right': 'left'
        }
        
        # Check if the direction is valid
        if direction not in opposite_directions:
            print("Invalid direction. Please choose 'up', 'down', 'left', or 'right'.")
            return
        
        # Get the opposite direction
        opposite_direction = opposite_directions[direction]
        
        # Simulate going in the specified direction fifteen times
        for _ in range(15):
            print(f"Pressing {direction} arrow key")
            actions.key(direction)
            
        # Simulate going in the opposite direction fifteen times
        for _ in range(15):
            print(f"Pressing {opposite_direction} arrow key")
            actions.key(opposite_direction)
    def attempt_image_click(image_path: str):
        """Attempts to click an image on the screen. Does not throw an error if clicking fails."""
        image_coordinates = actions.user.mouse_helper_find_template_relative(image_path)
        if len(image_coordinates) > 0:
            actions.user.mouse_helper_move_image_relative(image_path)
            actions.user.super_click()
    def hold_mouse_ms(ms: int):
        """Holds the mouse for a specified amount of time"""
        ctrl.mouse_click(button=0, down=True)
        time.sleep(ms / 1000)
        ctrl.mouse_click(button=0, up=True)
    def divide_by_forty_five(number: int):
        """Divides a number by 45 and rounds to the nearest whole number; returns a maximum of 360"""
        return min(round(number / 45), 8)
    def trails_menu(menu_option: str):
        """Navigates to a menu item in trails in the sky"""
        actions.key("ctrl")
        time.sleep(1)
        actions.user.move_to_spot(menu_option)
        time.sleep(1)
        actions.user.super_click()
        time.sleep(1)
        actions.key("space")
    def ute_rotate(direction: str):
        """Rotates the camera in the game Ute"""
        actions.user.key("x:down")
        actions.user.key(direction)
        actions.user.key("x:up")
        time.sleep(0.5)