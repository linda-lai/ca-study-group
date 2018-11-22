# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

books = [
    {
        title: "Harry Potter and the Philosopher's Stone : Illustrated Edition",
        isbn: "1408845644",
        author: "J. K. Rowling",
        description: "Prepare to be spellbound by Jim Kay's dazzling depiction of the wizarding world and much loved characters in this full-colour illustrated hardback edition of the nation's favourite children's book - Harry Potter and the Philosopher's Stone. Brimming with rich detail and humour that perfectly complements J.K. Rowling's timeless classic, Jim Kay's glorious illustrations will captivate fans and new readers alike. 
        When a letter arrives for unhappy but ordinary Harry Potter, a decade-old secret is revealed to him that apparently he's the last to know. His parents were wizards, killed by a Dark Lord's curse when Harry was just a baby, and which he somehow survived. Leaving his unsympathetic aunt and uncle for Hogwarts School of Witchcraft and Wizardry, Harry stumbles upon a sinister mystery when he finds a three-headed dog guarding a room on the third floor. ",
        price: 1325
    },
    {
        title: "American Gods",
        isbn: "0755322819",
        author: "Neil Gaiman",
        description: "American Gods, the extraordinary, highly acclaimed epic novel from storytelling genius and international bestseller Neil Gaiman, was brought vividly to life this year in the hottest major TV show of 2017 , and Amazon Prime video series starring Ricky Whittle, Ian McShane, Emily Browning and Gillian Anderson. For fans of The Book of Dust and Mythos by Stephen Fry.
        After three years in prison, Shadow has served his time. But as the days and hours until his release tick away, he can feel a storm brewing.
        Two days before his release date, his wife Laura dies in a mysterious car crash, in adulterous circumstances. Dazed, Shadow travels home, only to encounter the bizarre Mr Wednesday, who claims to be a refugee from a distant war, a former god and the king of America. Together they embark on a very strange journey across the States, along the way solving the murders which have occurred every winter in one small American town.",
        price: 3298
    },
    {
        title: "The Magic Schoolbus in a Sticky Situation : A Sticker Activity Book",
        isbn: "0590922505",
        author: "Joanna Cole",
        description: "Offers colorful stickers to put on Ms. Frizzle's dress, in an introduction to such topics as volcanoes, outer space, and animal camouflage and presents additional fun facts and entertaining science projects. Original.",
        price: 681
    }
]

# Note we put create!, this ignore  errors in case they arise/
Book.create!(books) do |book|
    puts "create book: #{book.title}"
end

# We use faker here

authors = [
    {first_name: Faker::Name.unique.first_name,
    last_name: Faker::Name.unique.last_name},
    {first_name: Faker::Name.unique.first_name,
    last_name: Faker::Name.unique.last_name},
    {first_name: Faker::Name.unique.first_name,
    last_name: Faker::Name.unique.last_name}
]
# Note we are using create! so if there is an error it doesnt put it in the database, but just tell you the error. 
Author.create!(authors){ |a| puts a.first_name}