// Problem 2*

// Define a variable and in it store the result of the second function when called with 2, [1,2,3], and the first function you created. When you console.log this variable to screen it should produce [ 2, 4, 6 ].


// Write a function called arrayMultiplyAgain that takes a number and an array as arguments, and returns each element in the array multiplied by the number.

const numberArray = [1, 2, 3]

// ES5
console.log('----THE ES5 WAY----')
function arrayMultiplyAgain(number, array) {
  return array.map(function(singleArrayValue) {
    // map iterates through an array return a single array value for you to act on before it is pushed to a new array
    return singleArrayValue * number
  })
}


console.log(`This uses the first function we created which will be passed to the second function as a callback - i.e. arrayMultiplyAgainResult:`)

const arrayMultiplyAgainResult = arrayMultiplyAgain(2, numberArray)
console.log(arrayMultiplyAgainResult)


// Now write a second function called moreArrayMultiply that takes three arguments: a number, an array, and a function: (eg. num, arr, funct).

    // By referring to using a function as an argument, a callback will be invoked - moreArrayMultiply will be the 'placeholder' (callback) function

// Have this function return the result of number and array when called as arguments to arrayMultiplyAgain which you passed in as an argument.

    // moreArrayMultiply will return the result of passing through a number and array as arguments to the arrayMultiplyAgain function

function moreArrayMultiply(number, array, callback) {
  return callback(number, array)
}



// Define a variable and in it store the result of the second function when called with 2, [1,2,3], and the first function you created. When you console.log this variable to screen it should produce [ 2, 4, 6 ].


console.log(`This uses the second function we created which has a callback to the first - i.e. moreArrayMultiplyResult:`)

const moreArrayMultiplyResult = moreArrayMultiply(2, numberArray, arrayMultiplyAgain)
console.log(moreArrayMultiplyResult)







// ES6
console.log('----THE ES6 WAY----')
arrayMultiplyAgain = (number, array) => {
  return array.map((singleArrayValue) => singleArrayValue * number)
}

moreArrayMultiply = (number, array, callbackFunction) => {
  return callbackFunction(number, array)
}

console.log(moreArrayMultiply(2, numberArray, arrayMultiplyAgain))