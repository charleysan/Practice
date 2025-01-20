
# # puts " Enter your age"

# # number = gets.chomp.to_i

# # if number >= 18 
# #   puts " Please enjoy the movie"
# # else
# #   puts " You are too young"
# # end

# # #TIMES LOOP
# # 3.times do
# #   puts "Eat me"
# # end

# # n = 0
# # while n < 10
# #   puts n
# #   n = n + 1
# # end

# secret = rand(1..10)                         #sets the secret to random number
# guess = nil
# # sets guess to nill 
# guess_input = 0

# puts "Three chances only!"

# loop do

# until guess == secret || guess_input == 3                   #conditional that will keep going until guess == secret
#   guess_input = guess_input + 1
#   puts "Guess a number between 1 and 10:" 
#   guess = gets.chomp.to_i 

#   if guess < secret 
#     puts "Too low!" 
#   elsif guess > secret 
#     puts "Too high!" 
#   else 
#     puts "Correct! The number was #{secret}"
   
#   end 
  
#   if guess_input == 3 && guess != secret
#     puts "GAME OVER"
#   end
# end


#   puts " Do you want to play again?"
#   reply = gets.chomp
#    if reply.downcase == "no"
#     break
#     elsif reply.downcase =="yes"
#     end
#   end
