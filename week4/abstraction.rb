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


# class Battery
#   def charge
#   puts "Battery is charging..."
#   end
# end

# class Storage
#   def read_data
#     puts "Reading data from storage..."
#   end
# end

# class Laptop
#   def initialize
#     @battery = Battery.new
#     @storage = Storage.new
#   end

#   def boot
#     power_on
#     load_files
#   end


#   private
#   def power_on
#     @battery.charge
#     puts "...Laptop is powering on...."
#   end

#   def load_files
#     @storage.read_data
#     puts "files loaded into memory..."
#   end
# end

# # battery = Battery.new
# # battery.charge

# # storage = Storage.new
# # storage.read_data

# laptop = Laptop.new
# # laptop.power_on  #before private
# # laptop.load_files  #before private was added

# laptop.boot  #adding method to call functions in private section

#===================================================
#AGGREGATION  can have one without the other

# class Player
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end

#   def display
#     puts "Player: #{@name}"
#   end
# end

# class Team
#   def initialize(name)
#     @name = name
#     @players = []
#   end

#   def add_player(player)
#     @players << player
#     puts "#{player.name} has joined #{@name}."
#   end

#   def show_team
#     puts "Team: #{@name}"
#     @players.each { |player| player.display }
#   end
# end

# player = Player.new("Charles")
# player1 = Player.new("Damen")


# team =Team.new("Ruby Rockets")
# team.add_player(player)
# team.add_player(player1)

# team.show_team

#=========================================
#AGREGATION EXERCISE
# Task: Create classes to model a Computer composed of CPU, Memory, and Storage.
# Instructions:
# Define classes CPU, Memory, and Storage with simple methods.
# Create a Computer class that composes these components.
# Implement a method start_computer that calls methods from the components.

# class CPU
#   def start
#     puts "Processor is warming up..."
#   end
# end

# class Memory
#   def ram
#     puts "Space avaialble in memory"
#   end
# end

# class Storage
#   def store
#     puts "Storage available for use"
#   end
# end

# class Computer
#   def initialize
#     @cpu = CPU.new
#     @memory = Memory.new
#     @storage = Storage.new
#   end

#   def start_computer  #need to call methods using objects
#     @cpu.start
#     @memory.ram
#     @storage.store
#   end
# end
# # cpu = CPU.new
# # cpu.start

# # mem = Memory.new
# # mem.ram

# # storage = Storage.new
# # storage.store

# computer = Computer.new
# computer.start_computer
#===========================================================
#SINGLETON PATTERN
# private: Methods are oonly accessible within the class
# protected: Methods are accessible within the class and its sub classes




#git clone url line
# git branch feature/<NameOfBranch>
# git checkout feature/<NameOfBranch>
# then git add., git commit etc