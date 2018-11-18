// Return the number (count) of vowels in the given string.
// We will consider a, e, i, o, and u as vowels.
// The input string will only consist of lower case letters and/or spaces.

function getCount(str) {
    // do code to count vowels
    vowelsCount = 0
    vowels = ['a','e','i','o','u']
    console.log(str.split(""))
    str.split("").forEach(element => {
        if (vowels.includes(element)){
            vowelsCount+=1;
        }
    });
    return vowelsCount
}

console.log(getCount("hello"))
// => 2

