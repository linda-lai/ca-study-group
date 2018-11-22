const ul = document.querySelector('.books')


function fetchBooks() {
     // get books
    // url, options
    const url = 'http://localhost:3000/books'

    const request = fetch(url) //=> This returns a promise object
    
    
    //So we are saying: get back the promise "request" and THEN do the callback, which is returning response.json() which is also a promise
    const books = request.then(function(response) {
        return response.json()
    })

    // fetchBooks() is returning a promise of response.json(), is just a promise not the books yet.  
    return books
}


// Note that because fetchBooks() function is returning a promise, we need to say "run fetchBooks() and THEN do the callback"
fetchBooks() //=> promise
    .then(function(books) {
        ul.innerText = ''; // just clearing the ul element everytime we load
        books.forEach(addBook) //running addBook() for each of the books element in the array.
    })


function addBook(book){
    //runs createBook() for each book we pass
    const liBook = createBook(book)
    // and appends to ul so it can be displayed. 
    ul.appendChild(liBook)
}


function createBook(book) {

    // create the li wrapper for the book
    const li = document.createElement('li')
    li.classList.add('book')
    // create the h4 title for the book
    const title = document.createElement('h2')
    title.innerText = book.title

    const price = document.createElement('strong')
    price.innerText = 'Price: '

    const priceArea = document.createElement('p')
    priceArea.innerText = `$${(book.price / 100.00).toFixed(2)}`
    // create p tag for the price

    li.appendChild(title)
    li.appendChild(priceArea)
    
    //Note that prepend puts price before priceArea.
    priceArea.prepend(price)

    return li
}

// js for displaying the authors

const authorList = document.querySelector(".authors")

function createAuthor(authorData) {
    const author = document.createElement("li")
    const link = document.createElement("a")
    link.href = '#' //usually you put the url here, but we are just going to put a # as a placeholder.

    //Deconstructing: its like the opposite of creating an object. basicaaly we exract the information from the object to variables, we need to use the keys and it doesnt matter the order once the keys match. eg. you could do
    // const {lastName,firstName} = authorData, and this still will work. 
    //Its based on the keys not the position. 
    const {
        ['first_name']:firstName, 
        ['last_name']:lastName
    } = authorData


    link.innerText = `${firstName} ${lastName}`

    author.appendChild(link)
    return author
}


function fetchAuthors() {
    const url = 'http://localhost:3000/authors'
    const authors = fetch(url)
                        .then((response)=> {return response.json()})
    return authors
}

function addAuthor(author) {
    newAuthor = createAuthor(author)
    authorList.appendChild(newAuthor)
}

fetchAuthors().then( authors => {
    console.log('authors',': ', authors);
    authors.forEach(addAuthor)})

// adding the form data to the database. 

// 1. get the form
// 2. add  an eventListener to submit
// 3. post a book
// 4. append newly created book from response


const bookForm = document.querySelector('#bookForm')

bookForm.addEventListener('submit', (event) => {
    postBook(event).then(addBook())
})

function postBook(event) {
    
    event.preventDefault()

    const title = event.target.title.value
    const isbn = event.target.isbn.value
    const description = event.target.description.value
    const price = event.target.price.value
    const author = event.target.author.value

    const url = "http://localhost:3000/books"

    //note we can do this because the names are the same in the db and in the variables
    const book = {
        title,description,isbn,price,author
    }

    const options = {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(book)
        // so we use JSON.parse() but to convert a js object to json we need JSON.stringifly. 
    }

    // Note we are going to pass an url and some options, which are defined above. 
    fetch(url, options)
                    .then(response => response.json())

                    
}

