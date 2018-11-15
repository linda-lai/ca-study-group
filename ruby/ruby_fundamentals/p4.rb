# *Problem 4*
# *Hats*

# 100 students are sitting in a row, and each has a hat on. Their strange teacher walks along the line of students (starting from the same end each time). 

# The first time he takes every hat off. 
# On the second pass he toggles the state of every second hat (putting on if off, taking off if on), changing the ‘hat state’ of every even numbered student. 

# The third pass he toggles every third hat. 

# The fourth every fourth, 

# and the fifth every fifth, 
# and so on until he has passed the students 100 times. 

# What is the final state of the hats (ie, which students have a hat on or off)?


system ("clear")

def toggle (arr,n)
    result = arr
    
    arr.each_with_index do |value, index|

        if (index+1)%n==0
            if value == 1
                result[index] = 0
            elsif value == 0
                result[index] = 1
            end
        end
    end
    result
end

students_state = Array.new(100,1)

puts "******original state*******"
print students_state
puts " "

(1..100).each do |i|
    puts "****** Iteration Number: #{i} ******* 1 = Hat ; 0 = No Hat"
    print toggle(students_state,i)
    puts " "   
    puts " "        
end

final_state= toggle(students_state,100)


counter=0

final_state.each do |value|
    if value==1
        counter +=1
    end
end

puts "At the last iteration,  #{counter} students have the hat on."
puts "And #{final_state.length - counter} students do not have the hat on."

