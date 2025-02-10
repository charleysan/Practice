# #abstraction is making it easy for anyone to use
#hide any complex /logic implementation details
# #encapsulation for making private


# class CoffeeMachine
#   def make_coffee(type)
#     boil_water
#     brew_coffee(type)
#     pour_in_cup
#     add_sugar_and_milk
#     return "#{type.capitalize} is ready!"
#   end

#   private

#   def boil_water
#     puts "Boiling water ..."
#   end

#   def brew_coffee(type)
#     puts "Brewing #{type} coffee ..."
#   end

#   def pour_in_cup
#     puts "Pouring coffee into the cup ..."
#   end

#   def add_sugar_and_milk
#     puts "Adding sugar and milk ..."
#   end
# end

# machine = CoffeeMachine.new
# puts machine.make_coffee("espresso")


# class BankAccount
#   def initialize(owner, balance)
#     @owner = owner
#     @balance = balance
#   end

#   # Public method: anyone can call these
#   def deposit(amount)
#     @balance += amount
#   end

#   def withdraw(amount)
#     if sufficient_funds?(amount)
#       @balance -= amount
#     else
#       puts "Insufficient funds!"
#     end
#   end

#   private

#   # Private method: only the class itself can call this
#   def sufficient_funds?(amount)
#     amount <= @balance
#   end
# end


# bankAccount = BankAccount.new("Leon", 100)
# puts bankAccount.withdraw(50)
# puts bankAccount.deposit(100)


#================================================================================
# Task: Create a Library class that manages books.
# Instructions:
# Define a Library class with methods to add and remove books.
# Use private methods to handle internal operations like updating the database.
# The user should interact with simple methods like borrow_book and return_book.

# require 'json'

# class Library
#   def initialize(file_name = "library.json")
#     @file_name = file_name
#     load_database  # Load existing data if available
#   end

#   def add_book(book)
#     @books<< book
#     puts "#{book} has been added to the library."
#     update_database
#   end
  
#   def borrow_book(book)
#     if @books.include?(book)
#       @books.delete(book)
#       puts "#{book} has been borrowed from the library."
#       update_database
#     else
#       puts "Title: #{book}, not available."
#     end
#   end
  
#   def return_book(book)
#     @books << book
#     puts "You've returned #{book}."
#     update_database
#   end
#   private

#   # Load the list of books from a JSON file (if it exists)
#   def load_database
#     if File.exist?(@file_name)
#       file_contents = File.read(@file_name)
#       @books = JSON.parse(file_contents)
#     else
#       @books = []
#     end
#   end

#   # Write the current list of books to the JSON file
#   def update_database
#     File.open(@file_name, 'w') do |file|
#       # Using 'pretty_generate' for readability
#       file.write(JSON.pretty_generate(@books))
#     end
#   end
# end

# library = Library.new

# library.add_book("1984")
# library.add_book("Brave New World")
# library.borrow_book("1984")
# library.return_book("1984")

#==============================================================
#COMPOSITION EXAMPLE
# class Engine
#   def start
#     puts "Engine is starting"
#   end
# end

# class Wheels
#   def roll
#     puts "Wheels are rolling"
#   end
# end

# class Car
#   def initialize
#     @engine = Engine.new
#     @wheels = Wheels.new
#   end

#   def drive
#     @engine.start
#     @wheels.roll
#     return "Car is moving"
#   end
# end

# # engine = Engine.new
# # engine.start

# # wheels =  Wheels.new
# # wheels.roll

# car = Car.new
# puts car.drive

#======================================================
#COMPOSITION EXERCISE
# Instructions
# Create a Battery class
# It could have a method like charge that prints "Battery is charging...".
# Create a Storage class
# It could have a method like read_data that prints "Reading data from storage...".
# Create a Laptop class
# It should instantiate its own Battery and Storage objects in the initialize method. This shows composition—the Laptop “owns” these parts.
# Provide methods like power_on and load_files:
# power_on should call the charge method on @battery and then print something like "Laptop powering on...".
# load_files should call the read_data method on @storage and then print something like "Files loaded into memory.".
# Test Your Laptop
# Create a new Laptop instance.
# Call power_on and load_files on it.
# Observe the output to confirm the classes are working correctly together.


class Battery
  def charge
  puts "Battery is charging..."
  end
end

class Storage
  def read_data
    puts "Reading data from storage..."
  end
end

class Laptop
  def initialize
    @battery = Battery.new
    @storage = Storage.new
  end

  def boot
    power_on
    load_files
  end


  private
  def power_on
    @battery.charge
    puts "...Laptop is powering on...."
  end

  def load_files
    @storage.read_data
    puts "files loaded into memory..."
  end
end

# battery = Battery.new
# battery.charge

# storage = Storage.new
# storage.read_data

laptop = Laptop.new
# laptop.power_on  #before private
# laptop.load_files  #before private was added

laptop.boot  #adding method to call functions in private section

#===================================================
#AGGREGATION