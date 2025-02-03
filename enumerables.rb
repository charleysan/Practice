0#enumerables and iterators

# select 
# numbers = [1, 2, 3, 4, 5, 6, 7, 8]

# even_numbers = numbers.select do |number|
#   number.even?
# end

# p even_numbers

# reject
# odd_numbers = numbers.reject do |number|
#   number.even?
# end

# p odd_numbers

# words = ["string", "Magik", "top", "Cloak and Dagger","boy", "Dr.Strange", "Scarlet", "car", ]

# long_words = words.select do |word|  # get swords greater than 3 letters
#   word.length > 3
# end

# p long_words

# letters = ["a", "b", "c", "d", "e", "i", "o", "u"]

# no_vowels = letters.reject do |letter| #only gets vowels removed
#   ["a","e","i","o","u"].include?(letter)
# end

# p no_vowels

#reduce
# numbers = [1, 2, 3, 4, 5]
# sum = numbers.reduce(10) do |total, number|  #can also make dynamic by .reduce(number to use)
#   total * number
# end

# puts "The product is #{sum}"

#sort
names = ["Charles", "alanna", "damen"]  
sorted_names= names.sort_by{ |name| name.downcase } # helps sort regardless of letter
p sorted_names 

# sorted_names = names.sort # no conditions then alphabetical for strings; but will prioritize captial letters first then ower case

# p sorted_names

descending_numbers = numbers.sort do |a, b| #greatest to least
  b <=> a 
end
p descending_numbers


#first way of printing array
numbers.each do |number|
  puts number
end

#second way of printing array
numbe# one liners 
# each 
numbers.each { |number| puts "The number is #{number}" }
person.each { |key, value| puts "#{key.capitalize}: #{value}" }

# map
squares = numbers.map { |number| number * number }

# select 
even_numbers = numbers.select { |number| number.even? }

# reject
consonants = letters.reject { |letter| ["a", "e", "i", "o", "u"].include?(letter) }

# reduce 
sum = numbers.reduce(0) { |total, number| total + number }

# sort 
sorted_numbers = numbers.sort { |a, b| a <=> b }

# sort_by.each { |number| puts number}

