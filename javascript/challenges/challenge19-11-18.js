// we want to uses classes to represent elements on a page

// create a shelf class that creates a ul and 
// attaches itself to an element of your choice on 
// the page (this could be body element or a div with an id)

// create a book class that creates a book element (li tag) with a title 
// create an addBook method to the shelf class that 
// takes a book class and adds it as a child to the ul

// create several books for the bookshelf

const container =  document.querySelector('#shelf-div')
const shelves =[]
class Shelf{
    constructor(){
        const ul = document.createElement('ul')
        ul.id = "myList"
        container.appendChild(ul)
    }

    addbook(book){
        console.log("adding a book")
        const ul =  document.querySelector('#myList')
        const li = document.createElement('li')
        li.innerText = book.getTitle
        ul.appendChild(li)    
    }
}

class Book{
    constructor(title){
        this.title = title
    }
    get getTitle(){
        return this.title
    }
}

const myShelf =  new Shelf

const myBook1 = new Book ("Ruby fundamentals")
const myBook2 = new Book ("Discrete Maths")
const myBook3 = new Book ("Ruby on rails")

myShelf.addbook(myBook1)
myShelf.addbook(myBook2)
myShelf.addbook(myBook3)
