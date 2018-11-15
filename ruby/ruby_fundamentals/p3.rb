# *Problem 3*
# Define an array with three numbers in it. Then write a method that takes two arguments. The first argument will be an array. The second will be a number. I want this method to return the array that would result if each element in the array was multiplied by the second argument. Return the result. Call this function with your array and an argument of your choice, and store the result in a well-named variable.

require 'pry'

arr = [1,2,3]

def multiply_array arr, num
    result = []
    arr.each do |value|
        binding.pry
        result.push (value*num)
    end
end

result = multiply_array(arr,10)
puts result
