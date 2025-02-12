# Mocking:
# Simulating the behavior of real objects in controlled ways.
# Useful for isolating the code under test.
# Stubbing:
# Providing predefined responses to method calls during a test.
# Helps test methods that depend on external services or complex logic.

# class Student
#   attr_accessor :name, :grades

#   def initialize(name)
#     @name = name
#     @grades = []
#   end

#   def average_grade
#     return 0 if grades.empty?
#     total = grades.reduce(:+) # sum up all items in the array
#     return total / grades.size # going to get the length of the array
#   end
# end

#===================================================================

class Library
  att_accessor = :book, :genre

  def initialize(book, genre)
    @book = book
    @genre = genre
  end

  def add_book(book)
    @books<< book
    puts "#{book} has been added to the library."
  end

  def fetch_books_from_api(book)
    if @books.include?(book)
      @books.delete(book)
      puts "#{book} has been borrowed from the library."
      
     else
      puts "Title: #{book}, not available."
    end
  end

end



class Library
  def fetch_books_from_api
    #simulate a cal to external API
    sleep(5) #simulates network delay
    ["Book 1", "Book"]
    return
  end

  def books
    @books ||= fetch_books_from_api
  end