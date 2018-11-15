# *Problem 1*
# Define 4 methods. The first takes a string (as an argument), and then returns the string + “ will be”, the second takes a string, and returns the string + “ won’t be”, the third takes a string and returns the string + “ impeached.” and the fourth is called trump_predictor. 

# trump_predictor takes a string, but then you must use the previous functions to get from this method call trump_predictor(“Trump”) to whatever outcome you think is more likely, but using only the previously defined functions. Store the output of trump_predictor in a well named variable. (For example, if you think he won’t be impeached, only call the methods that matter, so the output string will be “Trump won’t be impeached.”.)


def wil_be s
    s + "will be"
end

def will_not_be s        
    s + "won't be"
end

def impeached s
    s + " impeached."
end


def trump_predictor 
    result = impeached(wil_be("Trump "))
    
end

puts trump_predictor