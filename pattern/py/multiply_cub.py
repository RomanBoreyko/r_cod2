def get_volume_of_cuboid(length, withh, height): return length * withh * height

import math
def get_volume_of_cuboid(length, width, height):
    #convert input into a number
    length = float(length)
    width  = float(width)
    height = float(height)
    #check if input is not defined
    if (math.isnan(length) or math.isnan(width) or math.isnan(height)):
        return 0
    #check if input is less or equal to zero
    elif (length <= 0 or width <= 0 or height <= 0):
        return 0
    else:
        return length * width * height
    get_volume_of_cuboid(length, width, height)
