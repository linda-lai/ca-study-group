# *Ruby Drills*

# Sometimes you learn how to do things before you fully understand how they work.
# Coding is like this a lot. There are many things that I learned how to do well before I asked how they function.
# There are still plenty more things where that is the case for me. You merely push back that barrier slowly, but the unknown remains.
# In that vein, these are exercises that are designed to get you familiar with the lingo of arrays, objects, and functions, and get you repeatedly using them.
# It’s not a test, or even a challenge - it’s practice. Consider it like doing a forehand drill in tennis, or scales in music.
# You wouldn’t be upset making some mistakes while you practice, because you know that this is the thing you need to work toward being competent, and you allow yourself to fail and learn.
# This is exactly the same.

# Learn and fail as you need here, because the bigger tests are to come.
# As you get more comfortable with the basic syntax, and getting your code to work, you will have more brain space to think about what it is it all means.
# (And we are more than happy to keep explaining that at the same time too!)

# Follow the instructions carefully. They will be repetitive and are not designed to be interesting, but rather build up ‘muscle memory’.
# *Each* line of code that you write, you *must* save the file and run the code. If there are *any* errors, you fix them then and there.
# If in doubt, puts out the structure you have made to make sure that it is what you hoped it was.
# I’m looking for accuracy - I want the instructions followed precisely.
# It will be your choice of class and variable names (etc), but the functioning and number of attributes called for are immutable.
# Ideally you’ll want the work to be checked, so copy and paste this text into a file and comment it out, so that I can check it easily - put the answer directly below the question.

# 1. Make a method that takes two arguments, and returns the result of them added together.

def add_numbers(num1, num2)
    result = num1 + num2
    return result
end

# 2. Call the above method four times with different inputs each time. Make at least some of the inputs floats.

puts add_numbers(10, 10)
puts add_numbers(11.5, 2)
puts add_numbers(1.5, 0.07)
puts add_numbers(-45, 6.7)

# 3. Define two integer and two float variables, and use them as arguments to this method you have made.

integar1 = 55
integar2 = 100

float1 = 6.7
float2 = 0.02

puts add_numbers(integar1, integar2)
puts add_numbers(float1, float2)
puts add_numbers(integar2, float1)
puts add_numbers(integar1, float2)

# 4. Make a hash with four keys, and have the keys be three different data types.

coder_academy_student = {
    ["first_name", "last_name"] => "Susie Stack",
    age: 25,
    "student" => true,
    gpa: 3.5,
    final_grade: nil,
    1989 => "December 15th"
}

puts coder_academy_student

# 5. Access two of the values in your hash, and puts them to the screen.

puts coder_academy_student[:age]
puts coder_academy_student[["first_name", "last_name"]]
puts coder_academy_student[1989]
puts coder_academy_student[:gpa]

# 6. Define a class that has three attributes. Set one of those attributes at the time objects are initialised. Make one attribute readable, and the other two writeable.

# 7. Make two instance methods in the class you defined that do something basic (anything you like).

class Sneaker
    attr_accessor(:style, :size)

    attr_reader(:brand)

    def initialize(style, size)
        @brand = "Adidas"
        @style = style
        @size = size
    end

    def style_and_colour
        puts "My #{@style} sneaker colour is #{colour}."
    end

    def exchange_sneaker_size(size)
        return @size = size
    end

end

# 8. Make eight objects from the class you just made.
sneaker1 = Sneaker.new("Ultra Tech", 5)
sneaker2 = Sneaker.new("Stan Smith", 10)
sneaker3 = Sneaker.new("NMD", 7.5)
sneaker4 = Sneaker.new("UltraBOOST", 11.5)
sneaker5 = Sneaker.new("Stella McCartney", 8.5)
sneaker6 = Sneaker.new("Pureboost", 8)
sneaker7 = Sneaker.new("Solar Glide", 9)
sneaker8 = Sneaker.new("Edgebounce", 10.5)

# 9. Puts out an attribute of four of the objects (instances of the class) that you made.

p sneaker1.brand
p sneaker4.size
p sneaker8.style
p sneaker6.size

# 10. Assign three values to attributes of the objects you have made (those that have write access).

sneaker1.size = 10
p sneaker1

sneaker6.style = "Original"
p sneaker6

sneaker7.size = 4
p sneaker7

# 11. Define a function that takes a hash as the input, and puts out the value of one of the keys of the hash.

coder_academy_student = {
    ["first_name", "last_name"] => "Susie Stack",
    age: 25,
    "student" => true,
    gpa: 3.5,
    final_grade: nil,
    1989 => "December 15th"
}

def print_student_details(hash)
    puts "I am #{hash[:age]} years old."
end

print_student_details(coder_academy_student)

# 12. Create a hash with one key and value pair, and call the previous method with that hash as the argument.

age = {
    age: 41
}

print_student_details(age)

# 13. Make a hash with three keys and values, and assign it to a variable.

student1 = {
    name: "John Doe",
    age: 30,
    gpa: 4.0
}

# 14. Make four more hashes with the same keys.

student2 = {
    name: "Jane Smith",
    age: 25,
    gpa: 3.5
}

student3 = {
    name: "James Main",
    age: 50,
    gpa: 3.8
}

student4 = {
    name: "Jennifer Folsom",
    age: 32,
    gpa: 2.3
}

# 15. Access a value from three of these hashes.

p student4[:gpa]
p student3[:name]
p student2[:age]

# 16. Define a variable that will be assigned an empty array.

student_arr = []

# 17. Define a function that takes an array and a hash as arguments. The function will push the hash into the array given.

def create_hash_from_array(array, hash)
    result = array << hash
    return result
end

# 18. Using the method, the four hashes, and the array that you have made in the previous steps, call the method four times to put four hashes into the array.

create_hash_from_array(student_arr, student1)
create_hash_from_array(student_arr, student2)
create_hash_from_array(student_arr, student3)
create_hash_from_array(student_arr, student4)

# 19. Make sure that the array contains four hashes (maybe puts).

p student_arr

# 20. Access two elements of the array that you have created (via an index).

p student_arr[0]
p student_arr[3]

# 21. For one of these, now access one of the values of the hash at that index.

p "The GPA of #{student_arr[0][:name]} is #{student_arr[0][:gpa]}."

# -------------------
# 22. Make an class that has six attributes and three instance methods. Set two of the attributes when the objects are initialised, but do this by passing a hash as the argument.

# 23. Make two of the attributes readable, three writeable, and one both readable and writable.

# 24. Write two instance methods for the class you just made.

class Laptop

    attr_accessor(:osx)

    attr_writer(:type, :screen_size, :colour)

    attr_reader(:brand, :year)

    def initialize(hash)
        @brand = "Apple"
        @type = hash[:type]
        @screen_size = hash[:screen_size]
        @colour
        @year = 2015
        @osx
    end

    def upgrade_osx(osx)
        @osx = osx
    end

    def set_laptop_colour(colour)
        @colour = colour
    end

    def view_osx
        return @osx
    end

end

lindas_laptop = {
    type: "Macbook Pro",
    screen_size: 15.0,
    price: 3_500
}

my_laptop = Laptop.new(lindas_laptop)

p my_laptop

my_laptop.colour = "Silver"
my_laptop.osx = "High Sierra"

# p my_laptop

# 25. Make five objects from the class you made.

student1_laptop = {
    type: "Macbook Air",
    screen_size: 13.0,
    price: 2_500,
    osx: "Tiger"
}

laptop1 = Laptop.new(student1_laptop)

p laptop1

student2_laptop = {
    type: "iMac",
    screen_size: 21.5,
    price: 1_899,
    osx: "Yosemite"
}

laptop2 = Laptop.new(student2_laptop)

p laptop2

student3_laptop = {
    type: "iMac Pro",
    screen_size: 27.0,
    price: 7_299,
    osx: "Mojave"
}

laptop3 = Laptop.new(student3_laptop)

p laptop3

student4_laptop = {
    type: "Macbook",
    screen_size: 12.0,
    price: 2_349,
    osx: "El Capitan"
}

laptop4 = Laptop.new(student4_laptop)

p laptop4

student5_laptop = {
    type: "Macbook Pro",
    screen_size: 13.0,
    price: 2_899,
    osx: "Snow Leopard"
}

laptop5 = Laptop.new(student5_laptop)

p laptop5.osx = student5_laptop[:osx]

p laptop5

# 26. Puts the value of three separate object’s attributes.

p laptop1.brand
p laptop2.year
p laptop3.osx

# 27. Call the instance methods of three of these objects.

p laptop5.view_osx

laptop5.upgrade_osx("High Sierra")
p laptop5

laptop5.set_laptop_colour("Rose Gold")
p laptop5
