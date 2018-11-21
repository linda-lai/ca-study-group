// Problem 1*
// Write a function called arrayMultiply that takes two numbers, and a callback function as arguments.
// Return the callback function with the two numbers (those arguments) multiplied together as its argument.

//ES5
console.log('----THE ES5 WAY WITH ANONYMOUS FUNCTION----')

function arrayMultiply(num1, num2, callback) {
    multipliedNumbers = num1 * num2
    return callback(multipliedNumbers)
}

// Define an array outside of this function. Because JS scope works differently to Ruby you will be able to use that array within the following function without passing it through as an argument. But please note that it will not be functional programming as such - but in this case if you use map a new array will be created (rather than the original being mutated).

const originalArray1 = [1, 2, 3, 4]

// Define a variable and in it store the result of arrayMultiply when called with 2, 2, and also an anonymous callback function that takes the result as an argument, and then multiplies each element in the array by that result. When you console.log this variable to screen it should produce [ 4, 8, 12 ].

const newArray = arrayMultiply(2, 2, function(result) {
    return originalArray1.map(function(item) {
        return item * result
    })
})

console.log(newArray)

//-----------------------------------------------------------------//

console.log('----THE ES5 WAY WITH DECLARATIVE FUNCTION----')

const arrayMult = function(num1, num2, callback) {
    let result = num1 * num2
    return callback(result)
}

const originalArray2 = [1, 2, 3, 4]

function callbackFunctionWithES5(calculatedMultiplier) {
    // currentValue is equal to '1', '2', '3', '4'
    return originalArray2.map(function(currentValue) { 
        // calculated multiplier is equal to 'result' = num1 * num2
        return currentValue * calculatedMultiplier 
    })
}

console.log(arrayMult(2, 2, callbackFunctionWithES5))

// ES6
console.log('----THE ES6 WAY----')

const originalArray3 = [1, 2, 3, 4]

const arrayMultiplyWithES6 = (arg1, arg2, callback) => {
  let multiplier = arg1 * arg2
  return callback(multiplier)
}

const callbackFunc = (multiplierNum) => {
  return originalArray3.map((currentValue) => { 
   return currentValue * multiplierNum 
 })
}

const newArrayWithES6 = arrayMultiplyWithES6(2,2, callbackFunc) 

console.log(newArrayWithES6)