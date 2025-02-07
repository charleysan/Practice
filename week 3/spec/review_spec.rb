require_relative '../review'

# RSpec.describe Rectangle do
#   describe '#initalize' do
#     it 'initialize with the given length and width' do
#       shape = Rectangle.new(5, 10)
#       expect(shape.length).to eq(5)
#       expect(shape.width).to eq(10)
#     end
#   end

#   describe '#area' do
#     it 'multiplies the length and width' do
#       shape = Rectangle.new(5, 10)
#       expect(shape.area).to be > 51 # 50
#     end
#   end
#   describe '#perimiter' do
#     it 'adds the length and width and then multiplies by 2' do
#   expect(shape.perimiter).to eq(30)
#     end
#   end

# end

# Advanced Matchers
# be > / be <
# expect(10).to be > 5

# include
# expect([1, 2, 3]).to include(2)
# expect("hello world").to include("hello")

# match / match_array
# expect("abcdef").to match(/[a-z]+/) #indicates full range

# expect([1,2]).to match_array([2,1])  # order-insensitive

# change
# expect { account.deposit(100) }.to change { account.balance }.by(100)


#to not keep retyping parameters for rspec soo
#let{:shape} { Rectangle.new(5, 10)}

RSpec.describe Book do
  let(:book) { Book.new("Styxx", "S. Kenyon", 350)}  #@@.new is fro initialize method ONLY
  # let(:book) { Book.book_type("fiction") NEEDS TO BE WRITTEN IN CODE SINCE NOT IN INITIALIZE

  describe '#initalize' do
    it 'initialize with the given title, author and pages ' do
      # book = Book.new("Styxx", "S. Kenyon", 350)
      expect(book.author).to eq("S. Kenyon")
      expect(book.title).to eq("Styxx")
      expect(book.pages).to be > 50 
    end
  end
    
  describe '#book_type' do
    it 'initalizes the book section type' do
      expect(book.book_type("fiction")).to eq("The book is from the fiction section") #need to pass parameters into method if not in  the initalize
    end
  end

end