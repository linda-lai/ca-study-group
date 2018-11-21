// Write a function called arrayMultiplyAgain that takes a number and an array as arguments, and returns each element in the array multiplied by the number.

function arrayMultiplyAgain(num, arr) {
  return arr.map(element => num*element)
}

// Now write a second function called moreArrayMultiply that takes three arguments: a number, an array, and a function: (eg. num, arr, funct). Have this function return the result of number and array when called as arguments to arrayMultiplyAgain which you passed in as an argument.

function moreArrayMultiply(x, y, func) {
  return func(x, y)
}

// Define a variable and in it store the result of the second function when called with 2, [1,2,3], and the first function you created. When you console.log this variable to screen it should produce [ 2, 4, 6 ].

const result = moreArrayMultiply(2, [1,2,3], arrayMultiplyAgain)

console.log(result)