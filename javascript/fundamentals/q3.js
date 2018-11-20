// Problem 3
// Implement your own version of .forEach

// Define a function that takes a callback and provides the same functionality as the .forEach function inbuilt into es6.

// You can do this as a function that extends the array prototype (which takes a callback function as an argument), or more simply as a function that takes an array as an argument, as well as a callback function.

// for (initialization; condition; final expression) {
//     // code to be executed
// }

const myArray = [1, 3, 5, 7, 9]

function arrayOperation(number, array, callback) {
    const result = callback(number, array)
    console.log("The result is: " + result)
}

function multiplyArray(number, array) {
    // Creates a counter called i
    for (let i = 0; i < array.length; i++ ) {
        let multiplyResult = number * array[i]
        // console.log(number * array[i])
        return multiplyResult

    }
}

arrayOperation(10, myArray, multiplyArray)

// function myForEach(array, callback) {
//     let i = 0
//     const length = arr.length
//     while i < length {
//         newArr.push(fn(arr[i]))
//         i++ 
//     }
//     return newArr
// }

// const arr = [5, 6, 7]

// myMap(arr, function(item){
//     return item * 3
// })