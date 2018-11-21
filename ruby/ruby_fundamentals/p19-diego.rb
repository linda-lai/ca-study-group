# *Problem 19*
# Using some part of the HK MTR, write a method that takes one argument, a hash within which there are three keys: two which are strings (an origin station, and a destination station), and one which is an array. 

str = "hi"


# Choose part of a line from the MTR (or other rail network) as dummy data for the array. The method should return a hash that contains two keys: an origin index, and a destination index. These keys should be given the value of the index of the string the array if those stations are in the station array, or nil if not.