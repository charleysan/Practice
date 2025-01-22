#list of items which can store a specify format in some variable 
numbers = [2, 4, 6, 8, 10, 12]
names = ["Noah", "Leon", "Jess"]

# puts numbers - makes 
# p names

# specific slots would be like p names [2] would get Leon 
#The first index in the array starts with 0

#MODIFY SPECIFIC ARRAY INDEX
# p numbers 
# numbers [4] = 8
# p numbers

#ADDING TO THE ARRAY - .push (end of the array)
# p names
# names.push("Charles")
# p names

#REMOVING INDEX FROM ARRAY - .pop (end of array)
# p names
# names.pop
# p names

#array_name.delete_at(index)  (REMOVES FROM SPECIFIC INDEX)
#array_name.insert(index, specific_data) (ADDS TO SPECIFIC INDEX)

#EXERCISE 1,2

fav_colors = ["purple", "brown", "gold", "green"]

# p fav_colors [2]
# p fav_colors [0]

# puts fav_colors [0,5] (does not print the last index)
#  p fav_colors
#  fav_colors [3] = "blue"
#  p fav_colors

#  p fav_colors
#  fav_colors.push("silver")
#  p fav_colors

#  p fav_colors
#  fav_colors.delete_at(3)
#  p fav_colors

#  p fav_colors[0,2]


# Iterating over arrays
# ARRAY_NAME.length -  .length informs how many indexes
# puts names.length    
# puts numbers.length

#WHILE LOOP
# i = 0 
# # makes loop dynamic so if any changes to array will till print out 
# while i < numbers.length  
#   puts numbers[i]
#   i += 1
# end

#EACH LOOP
# numbers.each do |i|
#   puts i
# end 

#FOR LOOP
# for name in names
#   puts name

# end


# fav_colors.each do |name|  # |variable|  - changes the call name in the loop 
#   puts " I'm #{name}"
# end

# i = 0 
# # makes loop dynamic so if any changes to array will till print out 
# while i < 5
#   puts "Enter a number"
#   num = gets.chomp.to_i
#   numbers.push(num)
#   puts numbers[i]
#   i += 1
# end
#  p numbers


#NESTED ARRAYS
# numbers2 = 
# [[1, 2, 3],
# [4, 5, 6],
# [7, 8, 9]]

# # how to grab 5
# p numbers2[1][2]
# this grabs the 2nd index (inner) inside 1st index

teams = [
  ["Alice", "Bob"],
  ["Charlie", "David"],
  ["Eve", "Frank"]
]

# teams.each_with_index do |team, index|
#   #puts "team #{index + 1}"
#   team.each do |member| # team = ["Alice", "Bob"]
#     p member
#   end
# end

# teams.each_with_index do |team, index|
#   puts "team #{index + 1}"
#   team.each do |member| # team = ["Alice", "Bob"]
#     puts " - #{member}"
#   end
# end

movies = [
  ["Horror", ["Pan's Labyrinth", "Nosferatu"]],
  ["Anime", ["Madoka Magica", "Escaflowne"]]
]



movies.each do |genre, titles|  #|first index, second index, third index|
  puts "Genre : #{genre}"
  titles.each do |title| 
    puts " #{title}"
  end
end

#OUTPUT
#   Genre - Horror
#  Pan's Labyrinth
#  Nosferatu
# Genre - Anime
#  Madoka Magica
#  Escaflowne