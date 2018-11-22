// Problem 1
// Write a function called arrayMultiply that takes two numbers, and a callback function as arguments. Return the callback function with the two numbers (those arguments) multiplied together as its argument.
// Define an array outside of this function. Because JS scope works differently to Ruby you will be able to use that array within the following function without passing it through as an argument. But please note that it will not be functional programming as such - but in this case if you use map a new array will be created (rather than the original being mutated).
// Define a variable and in it store the result of arrayMultiply when called with 2, 2, and also an anonymous callback function that takes the result as an argument, and then multiplies each element in the array by that result. When you console.log this variable to screen it should produce [ 4, 8, 12 ].

// Problem 2
// Write a function called arrayMultiplyAgain that takes a number and an array as arguments, and returns each element in the array multiplied by the number.
// Now write a second function called moreArrayMultiply that takes three arguments: a number, an array, and a function: (eg. num, arr, funct). Have this function return the result of number and array when called as arguments to arrayMultiplyAgain which you passed in as an argument.
// Define a variable and in it store the result of the second function when called with 2, [1,2,3], and the first function you created. When you console.log this variable to screen it should produce [ 2, 4, 6 ].

// Problem 3
// Implement your own version of .forEach
// Define a function that takes a callback and provides the same functionality as the .forEach function inbuilt into es6. You can do this as a function that extends the array prototype (which takes a callback function as an argument), or more simply as a function that takes an array as an argument, as well as a callback function.

// Problem 4
// Implement your own version of .map
// Define a function that takes a callback and provides the same functionality as the .map function inbuilt into es6. You can do this as a function that extends the array prototype (which takes a callback function as an argument), or more simply as a function that takes an array as an argument, as well as a callback function.

// Problem 5
// Implement your own version of .filter
// Define a function that takes a callback and provides the same functionality as the .filter function inbuilt into es6. You can do this as a function that extends the array prototype (which takes a callback function as an argument), or more simply as a function that takes an array as an argument, as well as a callback function.

// Problem 6
// Implement your own version of .reduce
// Define a function that takes a callback and provides the same functionality as the .reduce function inbuilt into es6. You can do this as a function that extends the array prototype (which takes a callback function as an argument), or more simply as a function that takes an array as an argument, as well as a callback function.

// Problem 7
// Define an object that has two keys, one called 'buy' and the other called 'sell'. These will have the value of an anonymous function that takes no arguments, and that simply returns a string. The function associated with 'buy' will return "I want to buy!!", and the other returns "I want to get out!!"
// Define a function called originalFunction that takes two arguments, a number and an object, which you could call 'functionObject'. If the number is divisible by 2 then the function returns the functionObject's 'buy' function, and otherwise returns the 'sell' function.
// Now call this function with a number and the object that you created as arguments, and store the result in a constant. Now work out how to get the string to display to the screen.

// Sync and Async
// Next I want to get into the synchronous and asynchronous aspects of JS. Actually, most of JS works synchronously - that is, it runs each line of code in order, and waits while each line does its work. There are some things in JS that act asynchronously. These include API calls, setTimeout, and any function that handles events. But maybe it's better to see these things in action first.

// Problem 8 (sychronicity)
// This will show the way JS functions when acting synchronously.
// Here we are doing something a bit different. I will provide the code, and it will be up to you to investigate it. Tinker around with it, and look at the output until you understand it. If you don't, come and ask me for help.

console.log("Problem 8”)
console.time('problem-8’)

const looper = (cb) => {
   console.time('looper')
   for(i=0; i<1000000000; i++){
    x = Math.random()
   }
   console.log("In looper")
   console.log("After loop!")
   console.timeEnd('looper')
   console.log("..now passing through to the cb..")
   return cb()
}

looper(() => {
   console.timeEnd('problem-8’)
   return console.log("Finished 8 in the callback")
})

console.log("After looper")
console.log("..now heading off to other parts of the program!")
console.log("==================")

// Problem 9 (Asychronicity)
// Now we are going to have the same situation as the code in the previous question - except this time there is an asynchronous function: setTimout. Carefully observe the difference in behaviour by comparing the output with the previous example.

console.log("Problem 9”)
console.time('problem-9’)

const timeouter = (cb) => {
   console.time('timeouter')
   setTimeout(function() {
       console.log('After setTimeout!')
       console.log("..now passing through to the cb..")
       return cb()
   }, 6000)
   console.log('In timeouter')
   console.timeEnd('timeouter')
}

timeouter(() => {
   console.timeEnd('problem-9’)
   return console.log("Finished 9 in the callback!")
})

console.log("After timeouter")
console.log("..now heading off to other parts of the program!")
console.log("==================")

// Now contrast that with the functions that we encountered in Problem 8. You can see that while in 9 the entire program stops to wait for the loop, in 9 the program continues on, and other code would have been run before finally logging that it finally fully finished for real, it had escaped from the timeout, called the callback, and executed the callback code. (edited)