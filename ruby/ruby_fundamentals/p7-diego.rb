# *Problem 7*
# Define a well-named method that takes one argument and returns ‘true’ if that argument is even, and false if the argument is an odd number. 

# Define a method ‘div_or_mult_two’ which takes a number as an argument. Using your first defined method, if the number is even this method returns the result of that number divided by 2. If the number is odd it returns the result of that number multiplied by 2. Store the result of a call to this method in a variable.

def is_even num
    num%2==0
end

def div_or_mult_two num
    if is_even num
        return num/2
    else
        return num*2
    end
end

puts div_or_mult_two(2)
puts div_or_mult_two(3)
