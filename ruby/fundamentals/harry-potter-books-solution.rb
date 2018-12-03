# Once upon a time there was a series of 5* books about a very English hero called Harry. Children all over the world thought he was fantastic, and, of course, so did the publisher. So in a gesture of immense generosity to mankind, (and to increase sales) they set up the following pricing model to take advantage of Harry’s magical powers.
# One copy of any of the five books costs 8 EUR.
# If, however, you buy two different books from the series, you get a 5% discount on those two books.
# If you buy 3 different books, you get a 10% discount.
# With 4 different books, you get a 20% discount.
# If you go the whole hog, and buy all 5, you get a huge 25% discount.
# Note that if you buy, say, four books, of which 3 are different titles, you get a 10% discount on the 3 that form part of a set, but the fourth book still costs 8 EUR.
# Potter mania is sweeping the country and parents of teenagers everywhere are queueing up with shopping baskets overflowing with Potter books.
# Your mission is to write a piece of code to calculate the price of any conceivable shopping basket, giving as big a discount as possible.
# An example case,
# For example, how much does this basket of books cost?
# • 2 copies of the first book
# • 2 copies of the second book
# • 2 copies of the third book
# • 1 copy of the fourth book
# • 1 copy of the fifth book
# Once upon a time there was a series of 5* books about a very English hero called Harry. Children all over the world thought he was fantastic, and, of course, so did the publisher. So in a gesture of immense generosity to mankind, (and to increase sales) they set up the following pricing model to take advantage of Harry’s magical powers.
# One copy of any of the five books costs 8 EUR.
# If, however, you buy two different books from the series, you get a 5% discount on those two books.
# If you buy 3 different books, you get a 10% discount.
# With 4 different books, you get a 20% discount.
# If you go the whole hog, and buy all 5, you get a huge 25% discount.
# Note that if you buy, say, four books, of which 3 are different titles, you get a 10% discount on the 3 that form part of a set, but the fourth book still costs 8 EUR.
# Potter mania is sweeping the country and parents of teenagers everywhere are queueing up with shopping baskets overflowing with Potter books.
# Your mission is to write a piece of code to calculate the price of any conceivable shopping basket, giving as big a discount as possible.
# An example case,
# For example, how much does this basket of books cost?
# • 2 copies of the first book
# • 2 copies of the second book
# • 2 copies of the third book
# • 1 copy of the fourth book
# • 1 copy of the fifth book
# Once upon a time there was a series of 5* books about a very English hero called Harry. Children all over the world thought he was fantastic, and, of course, so did the publisher. So in a gesture of immense generosity to mankind, (and to increase sales) they set up the following pricing model to take advantage of Harry’s magical powers.
# One copy of any of the five books costs 8 EUR.
# If, however, you buy two different books from the series, you get a 5% discount on those two books.
# If you buy 3 different books, you get a 10% discount.
# With 4 different books, you get a 20% discount.
# If you go the whole hog, and buy all 5, you get a huge 25% discount.
# Note that if you buy, say, four books, of which 3 are different titles, you get a 10% discount on the 3 that form part of a set, but the fourth book still costs 8 EUR.
# Potter mania is sweeping the country and parents of teenagers everywhere are queueing up with shopping baskets overflowing with Potter books.
# Your mission is to write a piece of code to calculate the price of any conceivable shopping basket, giving as big a discount as possible.
# An example case,
# For example, how much does this basket of books cost?
# • 2 copies of the first book
# • 2 copies of the second book
# • 2 copies of the third book
# • 1 copy of the fourth book
# • 1 copy of the fifth book
# Answer:
# (4 * :sunglasses: - 20% discount [1st book, 2nd book, 3rd book, 4th book] + (4 * 8) - 20% discount [1st book, 2nd book, 3rd book, 5th book]
# = 25.60 + 25.60
# = 51.20

def get_sets_of_books(array_of_books, max_set_size)
    array_of_sets_of_books = []
    while array_of_books.length > 0
        books_to_delete = []
        unique_books = []
        array_of_books.each_with_index do |book, index|
            if !unique_books.include?(book)
                unique_books << book
                books_to_delete << index
            end
            if unique_books.length == max_set_size
                break
            end
        end
        array_of_sets_of_books << unique_books
        ordered_indexes = books_to_delete.sort.reverse
        ordered_indexes.each do |index|
            array_of_books.delete_at(index)
        end
    end
    return array_of_sets_of_books
end
def get_total_sets_cost(sets_of_books)
    total_cost = 0
    sets_of_books.each do |set|
        case set.length 
        when 1
            total_cost += 8
        when 2
            total_cost += 2 * 8 * 0.95
        when 3
            total_cost += 3 * 8 * 0.9
        when 4
            total_cost += 4 * 8 * 0.8
        when 5
            total_cost += 5 * 8 * 0.75
        end
    end
    return total_cost
end
def get_books_price(array_of_books)
    array_of_sets_of_books = []
    best_cost_hash = {
        best_price: 1.0/0,
        best_set_arrangement: []
    }
    max_set_size = 2  
    static_array_of_books = Marshal.load(Marshal.dump(array_of_books)) 
    while max_set_size <= 5
        array_of_books = Marshal.load(Marshal.dump(static_array_of_books))
        array_of_sets_of_books << get_sets_of_books(array_of_books, max_set_size)
        max_set_size += 1
    end
    print array_of_sets_of_books
    puts
    array_of_sets_of_books.each do |sets_of_books|
        total_cost = get_total_sets_cost(sets_of_books)
        puts total_cost
        if total_cost < best_cost_hash[:best_price]
            best_cost_hash[:best_price] = total_cost
            best_cost_hash[:best_set_arrangement] = sets_of_books
        end
    end
    return best_cost_hash
end
def price array_of_books
    hash = get_books_price array_of_books
    return hash[:best_price]
end
books = ['a', 'a', 'b', 'b', 'c', 'c', 'd', 'e']
print get_books_price(books)
puts
price_output = price(books)
puts "The best price is $#{price_output}."