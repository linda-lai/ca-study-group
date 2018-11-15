# *Problem 18*
# Write a method that takes two arguments, an array and a string. 

# If the string is not in the array it returns nil, and if it does contain the string, it returns the index of the string within the array. You will use this in the following question.

arr = "hola mundo, hello world".split(" ")



def index_in_array (arr,str)
    result = nil
    arr.each_with_index {|value,index|
        result = index if value == str        
    }
    result
end

p index_in_array(arr,"hla")

p index_in_array(arr,"mundo,")