// Implement your own version of .forEach
// Define a function that takes a callback and provides the same functionality as the .forEach function inbuilt into es6. You can do this as a function that extends the array prototype (which takes a callback function as an argument), or more simply as a function that takes an array as an argument, as well as a callback function.

// Function that takes an array as an argument, as well as a callback function.
function arrayEach(arr, callback){
  for (let i = 0; i < arr.length; i++) {
    callback(arr[i])
  }
}

arrayEach([1,2,3], function(element){console.log(element)})

// Function that extends the array prototype
Array.prototype.myEach = function(callback) {
  for (let i=0; i<this.length; i++){
    callback(this[i])
  }
}
const arr = [1,2,3]
arr.myEach(function(element){console.log(element)})