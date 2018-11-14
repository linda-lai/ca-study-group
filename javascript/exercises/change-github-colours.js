// Inspect your github profile and paste this code to see the colours change. 

const array = document.getElementsByClassName("day")

function getRandomInt(max) {
    return Math.floor(Math.random() * Math.floor(max));
  }
  

let colours = ["red",
"blue",
"green",
"yellow"
]


function changeColour () {
    for (let index = 0; index < array.length; index++) {
        const element = array[index];
        element.style.fill = colours[getRandomInt(4)]
    }
}

//And to make a cool animation:

window.setInterval(() => {
    changeColour()
}, 1000 / 60);




