#assigning data to a name to recall later in programming (String, interger etc)

#string
name = "Charles"
# puts name
# puts name.class

#integer
number = 30
# puts number
# puts number.class

#FLOAT
decimal= 1.75
# puts decimal
# puts decimal.class

#boolean
boolean= true
# puts boolean
# puts boolean.class

puts "Hello my name is  #{name}. I sell tamales for #{decimal} with #{number} pieces being the minimal order.We have been told best tasting on island is #{boolean}"

#puts (is printing out phrase)

#sum
number2 =70
# sum = number + number2
# puts sum

# difference 
# difference = number - number2
# puts difference

min_order = number * decimal
puts "The price of the minimal order is #{min_order}"

# quotient 
quotient = 100/decimal

puts "If want 100$ worth of tamales the amount of pieces would get would be #{quotient}"

# module -% - gives you the remainder of division operation 
# remainder = 20 % 3
# puts remainder

# if number % 2 == 0
#   puts "Even Number"
# else
#   puts "Odd Number"
# end

#gets.chomp (chomp removes \n)  (puts a \n) \n is new line character or skips a line

# puts "Please enter a number:"
# input = gets.chomp
# # Attempt to convert the input to an integer
# number = input.to_i
# # Check if the input is a valid integer
# if input.to_i.to_s == input
#   if number.even?
#     puts "#{number} is even."
#   else
#     puts "#{number} is odd."
#   end
# else
#   puts "Sorry, please provide an integer."
# end

puts " Enter your first number"
first_num = gets.chomp.to_i
#puts first_num

puts "Choose an operation(add, subtract, multiply, or divide)"
operation = gets.chomp

if 