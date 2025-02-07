# class Rectangle
#   attr_accessor :length, :width

#   def initialize(length, width)
#     @length = length
#     @width = width
#   end

#   def area
#     length * width
#   end

#   def perimiter
#     2 * (length + width)
#   end
# end




class Book 
  attr_accessor :title, :author, :pages, :type

  def initialize(title, author, pages)
    @title = title
    @author = author
    @pages = pages
  end

  def book_info
    "Title: #{@title}, Author: #{@autor}, Pages: #{@pages}"
  end

  def book_type(type)
    @type = type
    return "The book is from the #{type} section"
  end
end

book = Book.new("The Great Gatsby", "F. Scott Fitzgerald", 180)
puts book.book_info
puts book.book_type("fiction")
# Outputs: Title: The Great Gatsby, Author: F. Scott Fitzgerald, Pages: 180