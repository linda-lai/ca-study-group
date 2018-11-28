const Express = require("express")
const Joi = require("joi")
const app = Express()


app.listen(5000, () => { console.log("I am listening. I am creepy")})

const toDoList = [
    {
        id: 1,
        description: "taking out the rubbish",
        priority: 1
    },
    {
        id: 2,
        description: "grocery shopping",
        priority: 2
    },
    {
        id: 3,
        description: "ironing",
        priority: 3
    }
]

app.use(Express.json());

app.get('/', (req, res) => {
    return res.send(toDoList);
});
app.get('/:id', (req, res) => {
    const id = parseInt(req.params.id)
    const todo = toDoList.find(tLoop => tLoop.id === id)
return res.send(todo);
});

app.post('/', (req, res) => {
    const id = req.body.id
    const desc = req.body.description
    const prior = req.body.priority
    const todo = {
        id: id,
        description: desc,
        priority: prior
    }
    toDoList.push(todo)
    return res.send(todo)
}) 

app.put('/todo/:id', (req, res) => {
    const id = parseInt(req.params.id)
    const todo = toDoList.find(tLoop => tLoop.id === id)
    const schema = {
        description: Joi.string().min(3).required,
        priority: Joi.number().required
    }
    console.log(todo)
})