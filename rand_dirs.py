import time
import random
import threading
from talon import Module, actions, ctrl
import random

mod = Module()
rand_thread = None
keep_random = False


def random_directions():
    while keep_random:
        directions = ["up", "right", "down", "left"]
        # Choose a random direction
        direction = random.choice(directions)
        # Choose a random number of times to move in that direction, between 1 and 15
        num_times = random.randint(1, 7)
        # Move in the chosen direction the chosen number of times
        for _ in range(num_times):
            # If the direction is left or right then double the number of times to move
            if direction == "left" or direction == "right":
                num_times *= 2
            actions.key(direction)

@mod.action_class
class Actions:
    def start_random():
        """Travel in random directions to potentially find something useful"""
        # Convert run_away from string to boolean
        global rand_thread, keep_random
        # Stop any current button mashing before starting to grind
        actions.user.game_stop()
        keep_random = True
        if rand_thread is None or not rand_thread.is_alive():
            rand_thread = threading.Thread(target=lambda: random_directions())
            rand_thread.start()

    def stop_random():
        """Stop wandering around randomly."""
        global keep_random
        keep_random = False