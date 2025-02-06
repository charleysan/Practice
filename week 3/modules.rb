#modules  - like folders 


# ROLES OF MODULES
# Namespacing: Preventing name collisions by organizing code into separate spaces.
# Mixins: Adding shared functionality to classes without using inheritance.

# module MathConstants
#   PI = 3.14159
#   E  = 2.71828
# end

# module PDFTools
#   class Printer
#     def print_file(file)
#       puts "Printing #{file} as a PDF."
#     end
#   end
# end

# module NetworkTools
#   class Printer
#     def print_file(file)
#       puts "Printing #{file} over the network."
#     end
#   end
# end

# pdf_printer = PDFTools::Printer.new
# network_printer = NetworkTools::Printer.new

# pdf_printer.print_file("document.txt")
# network_printer.print_file("document.txt")


# # Task: Create modules to namespace classes.
# # Instructions:
# # Create a new Ruby file named modules.rb.
# # Define two modules: Animals::Mammals and Animals::Birds.
# # In each module, create a class named Animal with a method speak.
# # Instantiate objects from each class and call speak.


# module Animals
#   module Mammals 
#     class Animal
#       def speak
#         "I am a mammal."
#       end
#     end
#   end


#   module Birds
#     class Animal
#       def speak
#         "I am a bird"
#       end
#     end
#   end
# end

# mammal = Animals::Mammals::Animal.new
# bird = Animals::Birds::Animal.new

# puts mammal.speak
# puts bird.speak

# module Greetable
#   def greet
#     "Hello"
#   end
# end

# class Person 
#   include Greetable #allows the class to have whatever code is in the module Greetable
# end

# person = Person.new
# puts person.greet


# _-------------------

# module Loggable
#   def log(message)
#     puts "Log: #{Time.now} - #{message}"
#   end
# end

# class Person
#   include Loggable

#   def initialize(name)
#     @name = name
#     log("New Person created with name - #{@name}")
#   end
# end

# class Student < Person
#   include Loggable
#   def initialize(name)
#     super(name)
#     log("TESTING in the Student class")
#   end
# end

# person = Person.new("Jess")
# student = Student.new("leon")
# puts student.log("Class time")
# puts person.log("Morbin time")

#=========================================================


# Task
# Create a mixin (module) that you can include in multiple classes to share a common method.
# Instructions
# Define a module called Driveable.
# Inside Driveable, define a method drive that returns or prints a message like "Driving the <class name>!".
# Create two classes, Car and Motorcycle, in the same file.
# In each class, include the Driveable module.
# Instantiate objects from both Car and Motorcycle and call the drive method on each.
# Print or return the result so you can see that both classes share the same functionality.



# module Driveable
#   def drive
#     puts "Im driving the #{self.class}"  #method to call the class name into print statement
#   end
# end

# class Car
#   include Driveable
# end

# class Motorcycle
#   include Driveable
# end

# car = Car.new
# motorcycle = Motorcycle.new

# car.drive
# motorcycle.drive

#=========================================

# module Walkable
#   def walk(message)
#     puts "On a walk with #{message}"
#   end
# end

# class Person
#   include Walkable

#   def initialize(name)
#     @name = name
#     walk("#{@name}")
#   end
# end

# class Dog
#   include Walkable

  # def initialize(name)
  #   @name = name
  #   walk("#{@name}")
  # end
# end

# person = Person.new
# person.walk("Snoop Dog")
# dog = Dog.new
# dog.walk("Dog")


#=====================================================

# Task: Create a module with multiple methods and include it in a class.
# Instructions:
# Define a module MathOperations with methods add, subtract, multiply, divide.
# Create a class Calculator.
# Include MathOperations in Calculator.
# Instantiate Calculator and perform calculations.


# module MathOperations
#   def initialize(a,b)
#     @a = a
#     @b = b
#   end

#   def add(a, b)
#     sum = a + b
#     puts "The sum of #{a} and #{b} is #{sum}"
#   end

#   def subtract(a, b)
#     difference = a - b
#     puts "The difference of #{a} and #{b} is #{difference}"
#   end

#   def multiply(a, b)
#     product = a * b
#     puts "The product of #{a} and #{b} is #{product}"
#   end

#   def divide(a, b)
#     quotient = a/b
#     puts "The quotient of #{a} and #{b} is #{quotient}"
#   end
# end

# class Calculator
#   include MathOperations
# end

# cal = Calculator.new(2,6)
# cal.add(10,5)
# cal.subtract(10,5)
# cal.multiply(10,5)
# cal.divide(10,5)

# #=======================

# # How to call a module method directly:
# module MathOperations
#   def self.add(a, b)
#     a + b
#   end
# end

# puts MathOperations.add(1, 2)  # => 3

# # OR 

# module MathOperations
#   # `module_function` makes the following instance methods available
#   # as *module methods* (so you can call MathOperations.add).
#   module_function 

#   def add(a, b)
#     a + b
#   end
# end

# # Now you can call:
# puts MathOperations.add(1, 2)  # => 3

#==============================


#use inheritance for an is- a relationship
#use mixxins for shared behavior

# Instructions:
# Create another method for the Introduction module
# Test that method in the Person, Student, or Teacher classes
# Write an RSpec test in introduction_spec.rb for it

module Introduction

  def introduce
    "Hello, my name is #{@name}"
  end

  def into
    "Im #{@age} years old"
  end

end

class Person
  include Introduction
  attr_accessor :name, :age

  def initialize(name, age)
    raise ArgumentError, 'Age must be a positive number' if age < 0
    @name = name
    @age = age
  end
end

class Student < Person
  def initialize(name, age, grade, school)
    super(name, age)
    @grade = grade
    @school = school
  end
end

class Teacher < Person
  def initialize(name, age, subject, years_of_experience)
    super(name, age)
    @subject = subject
    @years_of_experience = years_of_experience
  end
end

# student = Student.new("Leon", 25, "12", "FD")
# puts student.introduce

# teacher = Teacher.new("Charles", 26, "Computer Science", 50)
# puts teacher.introduce