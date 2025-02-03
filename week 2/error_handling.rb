# begin: Starts a block of code that might raise an exceptions
# rescue: Catches specific exception and allows you to handle them
# ensure: Code that runs whether an exception occurred or not


#runtime exceptions
#puts 10 / 0
# puts 10 / 2

# Task: Create a safe division method.
# Instructions:
# Create a file named error_handling.rb.
# Write a method that takes two numbers and divides them.
# Use begin and rescue to handle ZeroDivisionError.
# Use ensure to print a message indicating the operation is complete.

def divide_numbers(a,b)
  begin
    result = a/ b
  rescue ZeroDivisionError #can also leave blank to catch all other errors
    puts "Error: Cannot divide by zero."
    result = nil
  rescue TypeError
    puts "Error: must be integers"
    result = nil
  rescue
    puts "Unknown Error occurred"
    result = nil
  ensure
    puts " Division attempt completed"
  end
  return result
end

# puts divide_numbers(10,0) #Outputs: Error message and nil
# puts divide_numbers(10, 2) # outputs: 5

# begin
# divide_numbers(10, t) #Name error occurs befor even hits method block
# divide_numbers(10, 2)
# divide_numbers(10, 0)
# rescue NameError
#   puts " Error: There was an issue with the parameters you passed in"
# end

#Made a custom error class to call
# class NegativeNumberError < StandardError  #custom class made - 
# end

# def square_root(number)
#   raise NegativeNumberError, "Cannot take square root of a negative number." if number < 0
#   Math.sqrt(number)
# end

# begin
#   puts square_root(9) #Outputs: 3.0
#   puts square_root(-4) # Raises NegativeNumberError
# rescue NegativeNumberError => e
#   puts e.message
# end

# Task: Create a custom exception for invalid input.
# Instructions:
# Define a custom exception class InvalidInputError.
# Write a method that raises this exception when the input is invalid.
# Use rescue to handle the custom exception.

class InvalidInputError < StandardError
end
def add(num1, num2)
  
  raise InvalidInputError, "Invalid input prompted, Please try a different input." if num1.class != Integer || num2.class != Integer
  result = num1 + num2
  return result
end

begin
  puts add(10, 5)
  puts add(10, "t")  #Output stops after initial error pop up for custom class
  puts add(20, 5)
  puts add(t, 2)
  puts add(10, 10)
rescue InvalidInputError => e
  puts e.message
rescue # covers other cases of errors not specified 
  puts "Please try again"
end

#IN CODE ERRORS CAUSE CODE TO STOP AT CERTAIN PART AND DOES NOT PROCEED FURTHER
# #ATTEMPT CODEBLOCK TO CUSTOMIZE
# attempts = 0

# begin
#   attempts += 1
#   puts "Attempt #{attempts}"
#   raise "An error occured." if attempts < 3
# rescue => e
#   puts e.message
#   retry if attempts < 3
# ensure
#   puts "Operation completed."
# end


def password_try  #does not get the Welcome to the program
  attempts = 0
  invalid_input = []

  begin
    attempts += 1
    puts "Please enter password (Attempt #{attempts})"
    input = gets.chomp

    raise "Incorrect Password. Please Try again" if attempts < 3 && input != "IloveCSG"
    invalid_input << (input)
  rescue => e
    puts e.message
    if input == "IloveCSG"
      puts "Welcome to the Program"
    else
      if attempts < 3
        retry
      else
        puts "Failed password attempts 3. Please reset password"
      end
    end
  ensure
    puts "Operation completed."
  end
  p invalid_input
  return invalid_input

end

password_try