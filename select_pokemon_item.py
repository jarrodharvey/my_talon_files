from talon import Module, actions, ctrl
import time

mod = Module()

mod.mode("game", desc="Gaming mode")

def get_item_type(item_filename: str):
    match item_filename:
        case "old_rod":
            return "key_item"
        case "tm_case":
            return "key_item"
        case _:
            return "error"

def go_item_type(item_type: str):
    # This function is used to go to the item type in the pokemon bag
    match item_type:
        case "items":
            return
        case "key_item":
            actions.user.walk("right")
        case "pokeballs":
            actions.user.walk("right")
            actions.user.walk("right")
        case _:
            return "error"

@mod.action_class
class Actions:
    def select_pokemon_item(item_filename: str):
        """Select an item in pokemon"""
        item_type = get_item_type(item_filename)
        # Press start to open the menu
        actions.key("return")
        time.sleep(1)
        # Press down until you find the bag
        actions.user.press_key_until_image_appears("/home/jarrod/Pictures/click_symbols/pokemon_bag.png", "down", 0.5, "xlll")
        time.sleep(3)
        # Press right until you find the item type
        go_item_type(item_type)
        time.sleep(1)
        # Go up 20 times to ensure you hit the top of the list
        for i in range(20):
            actions.user.walk("up") 
        # Go down until you find the item
        actions.user.press_key_until_image_appears(f"/home/jarrod/Pictures/click_symbols/pokemon_item/{item_filename}.png", "down", 0.5, "xx")