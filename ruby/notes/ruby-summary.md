# What is programming?
## Datatypes and Data Structures

### Datatypes
If you have been having some trouble with ideas relating to datatypes and data structures, then here there might be a bit of a need to do some forgetting - as much as that is possible. Ideally you can come at this without some assumptions that you have about all of this, and see it fresh. 

In a way I could teach this by rote, or you could be drilled or clickered into understanding:
* 5 - this is a integer datatype, and its value is five.
* 12 - this is an integer datatype, and its value is twelve.
* 2000 - this is an integer datatype, and its value is value is two thousand.
* 3.2 - this is a float datatype, and its value is three point two.
* 47.12 - this is a float datatype, and its value is forty seven point one two.
* “tiger” - this is a string datatype, and its value is tiger.
* “uuuu vvvvv wwww xxxx yyyy zzzz” - this is a string datatype, and its value is uuuu vvvvv wwww xxxx yyyy zzzz.

And little by little you would see that each element that is given has a type (which in coding we call a datatype) and a value, which is the specific description of which individual thing we are talking about. The datatype is like thinking of the category of the thing we are looking at, and the value is like talking about which instance or specific item in that category we are looking at.

In the real world an analogy might be the idea of a sandwich. Sandwich is a category. The value would be like telling you more about a specific sandwich. Ham and cheese, tuna and lettuce, schnitzel and salad. In the same way, I can say this thing I am referring to is an integer. That tells you something about what I have - the category, and in coding this is the datatype. You could further ask, ok what is its value, which is like asking, which integer is it? 
4,376,902 and 7 are both integers but they have different values. 6.7, 0.000000000456, and 100003.1 are all floats, but have different values. “this”, “that”, and “pppppp   ppppppp” are all strings, but they have different values. 

In the same way I can say this thing I am referring to is an integer. That tells you something about what I have - the category, and in coding this is the datatype. You could further ask ‘ok what is its value?’, which is like asking, which integer is it?

You can imagine it’s a guessing game. I have a bit of data.

What type is it?

	Integer.

Ok. Which integer?

	Five.

Type and value.

	I have something for you to eat.

What type of thing?
	A sandwich.

Which sandwich?

	This ham and cheese one. Here take it.

Type and the ‘value’, or the specifics of which particular thing of that type we are looking at.

This thing I have is of type string.
What is its value?
It has the value ‘this is a silly string’.

Not all datatypes have so many possible values. Integer datatype has literally infinite possibilities (all possible numbers), but boolean can only take two values, and those are true and false. But the same concepts apply: we have a type (or datatype), boolean, and a value, which in this case can only be true or false.

String is what we call datatypes that we usually call text. We put quotes around it the content that we are making the value of the string. We are saying that the thing inside the quotes is text, but the technical word for that in most programming languages is string.

So if I see “this is some text” in a piece of code, then I know it’s a thing that has the datatype string, and the value is ‘this is some text’.

Unlike boolean with only two possible values, string has many possible values. As many possibilities as there are for text. A string could be pages long, or one character long.

* “B” - this is a string and its value is: B
* “Something That Is A String” is a string, and its value is: Something That Is A String
* “skljsksjkslkjslksjskjlkjslklskjls” - this is a string and its value is: skljsksjkslkjslksjskjlkjslklskjls
* “w        op       12.    @#    lkjhgfdsa” - is a string, and its value is w        op       12.    @#    lkjhgfdsa (and now you can see how it can be weird talking about these things without using quotes or brackets - but brackets and quotes mean things in coding and complicates things).

The only other datatype (apart from symbols, which we will cover later is the strangest. It’s the datatype nil, which has the weird attribute of being both the name of the datatype and the value. That might not make sense right now, and if not you can leave it, or accept it: nil is nil datatype, and value nil (which is not zero, which is an integer - it is nil).

The datatypes we have talked about so far are the simpler ones. That doesn’t mean they are simple to understand or use necessarily, but that they are a bit like the elements in the periodic table, or like the ingredients in a dish. They can’t be broken down any more. They are the essential bits that make up coding. They are vital, and necessary. Integer, float, string, boolean, nil. Everything else relies on them.

### Data Structures

Now we are going to talk about other constructs in coding, which I have been calling datatypes. These are more correctly describes as data structures. But the distinction is not always so clear. These are really constructs in coding - things made up by the programmers that came before you - to make shifting and mutating and combining those basic elements we have been discussion much easier. They are a means to an end. They are tools. In some ways can bee thought of as storage facilities.

Arrays are the structure that were made to store things that are of similar types. They come built into Ruby, and provide a place to store items with the same datatype. They are helpful for storing data because they come indexed - someone did all this for you. By convention the first index is 0, and the index goes up by 1 for every element added to the array.
[“cat”, “dog”, “fish”] is an array with three elements. They are all strings. At the 0 index is the string “cat”. At index 1 the string “dog”, and at 2 is “fish”. 

Arrays are useful because they come ready made with indexes, and because we ‘know’ (or assume) that they will contain the same type of data. Although we could fill them with different types of things, we try not to do this because it ruins their benefits. Nothing stops us from putting any mix of anything we like into an array. We could put in strings and floats and booleans into one array, but instantly we have lost the power of the structure - a structure that is there merely to help us. We aren’t obligated to use arrays - they are there for our benefit when we feel they could help us achieve a goal. We should attempt to program them to hold the same type of data so that when we loop through them they will behave as expected. 

For example, let’s say we have an array filled with numbers that we want to add together and find the total, but for some reason a string sneaks in. Everything will go well until we try to add a string to our running total, at which point our code breaks. This is a problem for us, but it is of our own making. No point blaming the array or the each loop.

To labour the point slightly, let’s say that we have some data about a tennis player. Think about the problems with putting all that data into one array. It might look like this:
[“Roger”, “Federer”, 20, 36, 8, 4]
The biggest problem here is that we have no way of knowing what the data is that we are extracting. 4 refers to his number of kids. Or at least that’s what I had in mind. 20 refers to total grand slam titles - but how would anyone know? And what is the point of indexing this data set in this way? How would this be used in a loop? We are having many problems (and we will return to these later).

That arrays contain the same datatype is really just the minimum requirement. Let’s say you have a list of students, but are storing both the first names and last names in the array. Maybe it looks like this:
names = [“Roger”, “Federer”, “Rafael”, “Nadal”, ..]
You can see how this might be less useful than having 
first_names = [“Roger”, “Rafael”, ..]
second_names = [“Federer”, “Nadal”, ..]
Here you can see that it will be more readily useful to us in this format. In the first example, no matter which index we hit we are getting back a first name. And in the second we will always encounter a second name. And this is most of what coding is. Pushing and poking at data and trying to get a result. You do the work to put the data into an array so that you can perform useful tasks with ease. Sometimes getting the data in the array is the hard part, but that’s part of the challenge of coding. Sometimes you have a perfect array of data, and have to think very hard about how to extract what you need.

Remember earlier when we had the data referring to Federer, but it looked silly in an array?
[“Roger”, “Federer”, 20, 36, 8, 4] was the array.
We can use another datatype called a hash to make better sense of this. A hash is a data structure that helps us to store the stat relating to one entity (in this case a tennis player), but where we have several datatypes that make up that entity. 

In this case the data we are trying to represent could be first and last names, number of glad slams,  number of kids, and age. Here, some of these are best represented as integers rather than strings. Now, you could potentially argue that we could just make them strings, and then we’d have the same datatype. But would this be much of an improvement?
[“Roger”, “Federer”, “20”, “36”, “8”, “4”]
If someone doesn’t know that “36” is his age, then what does that number mean to them? How is this useful?

The hash datatype helps us out here because we have keys that describe the data we are looking at, and these keys have a value.
So for the data above we might have something like:

federer = { 
    first_name: “Roger”,
    second_name: “Federer”,
    grand_slam_titles: 20,
    age: 36,
    children: 4
}

You can see that here we have contained in one structure all the things that we need to cover, but the information about what these values refer to is not lost. Now we can access elements of this variable federer by referencing the key.
federer[:age] gives us back the integer 36, for example.

You can think of all that we have seen so far as falling into two levels. The elementary datatypes are the building blocks of everything else that happens. They are string, float, integer, boolean, and nil. These are the basic structures: the elements that we can use to build our world.
And then we also have two useful structures that are inbuilt into Ruby to help us combine these lower level elements: arrays and hashes.
In the same way as we are all made from the same elements, but just in different combinations, all code ever is is those basic datatypes being pushed around all over the place in larger structures.

Most of the time we will want to make use of a variable to help us in our quest. So..

*Variables*
Variables are merely a placeholder for some bit of data. They are (to us) a recognisable word that we can use as shorthand for whatever bit of data we feel is useful. (To the computer they just refer to a place in memory, but you don’t need to worry about that much.)

If we write 
[1,2,3].each do |item|..
And so on, it’s not too onerous to keep writing [1,2,3] wherever we need it.
But what if the array has 100 items? 1000? 
Then it becomes a problem. So if we want a place to store this thing we have created, we use a word - let’s say huge_array - and store our data in it. Now that word just represents that bit of data. An array with three things. An array with 100. A big weird hash. An integer of some value. A string of some value. And so on.

Then we can say
huge_array.each do |item| 
and be all cool.

We can also overwrite this variable with new data. This is why they are called variables. They vary as needed throughout our code.
If we write 
huge_array = 8
We have now overwritten our array with the integer 8. We probably wouldn’t want to do this, but we can. Ruby certainly allows us to do this, so it is worth keeping in mind that this behaviour will not throw an error, as Ruby doesn’t itself know anything about our variable from the name itself - only the human programmers do. 

We haven’t got to objects, but those are the next ones to get our teeth into, and are another step up again. But first we have another construct, methods.

### Methods
Methods are also useful constructs for pushing around your data. 
Let’s say at several points in your code you get your array of names and you print it out. And you also print our your array of last names. And your array of ages. And you do this same thing time and time again before your code finishes executing. You could just keep writing out this loop again and again and again and again and again..
But you probably don’t want to, right? So maybe this little but of logic that you are needing so frequently can be pulled out in some way so that we only define it once, but use it multiple times as required.

We would use a method. A method is in some ways its own little code world. It is a world which, much like Australia, has very strict policies around what can come in and out. The only things allowed into the world or country are the arguments. They are the ports of entry, and act almost like variables or placeholders for what things will visit this world. The emigration policy is actually more strict. Only one thing is allowed out of this country. We refer to this data that escapes as the return value.

Let’s take the hypothetical that we used above. We know that we will want to print out several different types of arrays time and time again. Let’s write the general case, and encapsulate it in a method.

```ruby
# Defines a method called print_array that takes one argument, an array
def print_array(array)

# Loop through the array, each element in turn stored in the variable name ‘element’
	array.each do |element|

# Print out each element, and add a comma and space
		print element + ‘, ’

	end
# Puts a newline after the loop finishes 
	puts

# Return the array from the method
    return array
end
```

Sharp eyes will notice that the method doesn’t quite do the job perfectly (it leaves the last element with a trailing comma, which isn’t quite right, and we will have to fix that later). But we can see that we now have a powerful tool - a bit of code that can be moved around, and which takes any array that we hand it.
Whenever we need to print an array in our code (in this format), then we simply call the method:

```ruby
print_array(huge_array) 
And send it an array through its argument. 
print_array([3,2,1])
some_array = [“fish”, “cat”, ”dog”, ”elephant”]
print_array(some_array)
print_array([“big sentence that will only print one thing in this method”])
print_array([])

# We have defined our method print_array one time, but easily used it five times.
```

Here we are just returning (ejecting from the world of the method) the array that we gave it. This isn’t particularly useful in this case, but more to demonstrate that methods return things. So let’s write a simple method that takes a few more bits of data into its world, and ejects out something that perhaps we want to use. 

```ruby
def adder(num1, num2, num3, num4, num5)
	big_num = 100
	result = num1 + num2 + num3 + num4 + num5 + big_num
	return result 
end
```

Here we are letting five things into our world. We are hoping they are all numbers, and this is why we named them this way. In ruby nothing stops the method being called with strings or hashes or arrays, and if that happens then things are likely to break. Flexibility has its own benefits though (and there is a big discussion that you can have about these matters). 

So we are letting five bits of data in, but as usual only letting one bit of data out. We are returning the result of all the numbers that came in through the arguments added together with a variable called big_num, which is an integer, and has the value one hundred.
Because all this happens in the world of adder, we can’t access any of those variables outside of adder itself. If later after this method we try to refer to big_num or num1 or num5, we will encounter an error.

Here we call this method like this:
```ruby
adder(9,4,7,2,4)
```

If we don’t use the correct number of arguments, then things break. But we had that right, and things work as they should. The problem is that if you run that code you will not see any output, and also that it’s not overly useful. When you wrote a method you will usually be after some sort of output from the method. Some might just print something, and in those cases you might not be too bothered by what the method returns, and there are occasions when you won’t need to be too worried about the return value. But mostly the return value will be the most important element of the method - it’s the result, and losing that result should be painful.

So we might do this:
```ruby
result1 = adder(9,4,7,2,4)
result2 = adder(4,4,4,4,4)
result3 = adder(6,4,7,6,1)
```

Now we have gathered the results from three calls to the method we made, and we can do whatever we like with them. We presumably called our method for a reason, and do achieve a result, and then we have stored those results in variables.

We could then puts one of the results:

```ruby
puts result2
```

Or we could add all of the results together.
```ruby
total_result = result1 + result2 + result3
```

If we hadn’t returned the result and also stored that somewhere, then the work we did is lost.

Don’t get return and puts confused. It’s important to bring this up here. When you start with Ruby you will be using puts a heap to see the output from different variables, to see what they are. This is useful to get the feel for what the code is doing, and also as a debugging tool. There is no problem with that - except when puts starts to replace return. I will go into the explanation for that in due course, but please remember that return denotes what you want output from the method, whereas puts only prints something to standard output for you to see. These are different - I can’t stress this enough.

### Symbols
Programming is just a way to shift data around. That’s really about it. That data can be numbers or text. And in a way, that’s all we care about as humans. These elements may in the end program machines, but even if the end result is to make a robot move, the code that humans read is text and strings. 

In a way this is the essence of coding. You take a problem. You represent it in data - in the forms that we have talked about above. And then you use the structures and methods that we defined earlier to manipulate that data to get the outcomes that you are after. Loops, if/else, arrays, hashes, and objects are really all just tools to help you to achieve whatever goal you were looking for. Some of these help you to directly control the flow of the data (while, if/else), while others help you to structure the data that you have, and put it into useful formats. This is a way to think about the broadest level of programming.
