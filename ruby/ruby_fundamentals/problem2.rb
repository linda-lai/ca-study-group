# *Problem 2*
# Define a method that takes a number of feet, and returns a number representing the total inches, and another that takes a number representing inches and returns the number of centimetres. Define and call a third function called feet_to_cm that takes a number of feet and returns the number of centimetres, but that uses only our previous two functions. Store that number in a well-named variable.


def feet_to_inches feet
    feet*12    
end

def inches_to_cm inches
    inches*2.54
end

def feet_to_cm feet
    inches = feet_to_inches(feet)
    centimeters =  inches_to_cm(inches)    
end

puts feet_to_cm (100)