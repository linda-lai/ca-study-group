# *Problem 8*
# Define a method that takes an array of numbers, and returns the total of the addition of all the numbers in the array. Store the result of a call to this method in a well-named variable.


def sum_array (arr)
    result  = 0
    arr.each do |value|
        result +=value
    end
    result
end

puts sum_array([1,2,3])