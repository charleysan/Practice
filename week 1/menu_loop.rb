# Create a file called menu_loop.rb where you display a simple text-based menu repeatedly until the user chooses to exit.
# Requirements:
# Print a menu:
# 1) Greet
# 2) Tell a joke
# 3) Exit
# If the user chooses 1, ask for their name and greet them.
# If the user chooses 2, print any short joke.
# If the user chooses 3, exit the loop.
# If the user enters an invalid choice, prompt them again.

def countdown
  puts "Please enter a number! "
  count = gets.chomp.to_i
  loop do
    puts count
    count = count - 1
    if count == 0
      puts "Gotta Blast!
      (⌐■_■)"
      break
    end
  end
end




puts "Welcome to the menu. Please select an option
1 - Greeting
2 - Joke?
3 - Exit menu
4 - Countdown"

loop do
  choice = gets.chomp.to_i
  if choice == 1
    puts "Please enter your name"
    name = gets.chomp
    puts "Salutations #{name}! Thank you for choosing our services XD"
  elsif choice == 2
    puts "Wanna hear two short jokes and a long joke?"
    puts "Joke, Joke, Joooooooooooooke ಠ_ಠ"
  elsif choice == 3
    puts "Goodbye...(✖╭╮✖)"
    break
  elsif choice == 4
    countdown  #Used function thats in the begining of code
    # puts "Please enter a number! "
    # count = gets.chomp.to_i
    # loop do
    #   puts count
    #   count = count - 1
    #   if count == 0
    #     puts "Gotta Blast!
    #     (⌐■_■)"
    #     break
    #   end
    # end
  else
    puts "Selection invalid. Please input a number from 1-3
    ♡♡"
  end
end