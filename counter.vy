# Example of a simple smart contract on Vyper

# Initialize the counter
counter: int128

# Event that will be fired when the counter changes
CountChanged: event({new_count: int128})

# Contract constructor
@public
@payable
def __init__():
     self.counter = 0

# Method for getting the current counter value
@public
@constant
def get_counter() -> int128:
     return self.counter

# Method for increasing the counter by a given value
@public
@payable
def increment_counter(value: int128):
     self.counter += value
     # Call the event
     log.CountChanged(self.counter)
