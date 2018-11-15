# *Problem 24*
# *Quiz Letter blocks*
# You are given a collection of ABC blocks. Just like the ones you had when you were a kid. There are twenty blocks with two letters on each block. You are guaranteed to have a complete alphabet amongst all sides of the blocks. The sample blocks are:
# [['B','O'],
# ['X','K'],
# ['D','Q'],
# ['C','P'],
# ['N','A'],
# ['G','T'],
# ['R','E'],
# ['T','G'],
# ['Q','D'],
# ['F','S'],
# ['J','W'],
# ['H','U'],
# ['V','I'],
# ['A','N'],
# ['E','R'],
# ['F','S'],
# ['L','Y'],
# ['P','C'],
# ['Z','M'],]
# If you test these words, these results will happen:
# can_make_word("A")
# # => true
# can_make_word("BARK")
# # => true
# can_make_word("BOOK")
# # => false
# can_make_word("TREAT")
# # => true
# can_make_word("COMMON")
# # => false
# can_make_word("SQUAD")
# # => true
# can_make_word("CONFUSE")
# # => true
# can_make_word("BOUGHT")
# # => false
# Write a program in ruby that evaluates can_make_word
# Extension
# Use the lots_of_words.txt file to test your code.
# Now order the words that can be made by length.

def array_repeated positions
    bool =  true 
    b = Hash.new(0)
    #counting how many times the arrays repeat.
    positions.each do |v|
        b[v] += 1
    end
    # checking if the array repeats more times than the lenght of the array.
    b.each do |k, v|
        if v>k.length 
            bool=false
        end       
    end
    return bool
end

def can_make_word (str)
    arr= [['B','O'],
    ['X','K'],
    ['D','Q'],
    ['C','P'],
    ['N','A'],
    ['G','T'],
    ['R','E'],
    ['T','G'],
    ['Q','D'],
    ['F','S'],
    ['J','O'],
    ['H','U'],
    ['V','I'],
    ['A','O'],
    ['E','R'],
    ['F','S'],
    ['L','Y'],
    ['P','C'],
    ['Z','M'],]
    
    str = str.split("")

    positions = [] 
    position = []
    str.each_with_index do |value,str_index|
        arr.each_with_index do |block,block_index|
            if block[0]==value || block[1]==value
                position.push(block_index)
            end
        end
        positions.push(position)
        position =[]
    end 

    p str
    p positions
    return array_repeated(positions)
end


# can_make_word("A")
# # => true
p can_make_word("BOOOO")
# => true