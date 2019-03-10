# This program takes the input, which is formatted as a bunch of numbers serparated by commas,
# and converts it to a string of characters.

def input_to_array(input):
    """Convert the passed string of numbers to a string of characters."""
    
    temp_array = input.split(',')
    return temp_array

def main():
    my_input = raw_input()
    print(input_to_array(my_input))

if __name__ == "__main__":
    main()

