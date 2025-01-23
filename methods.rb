#Dry - Dont repeat yourse;f
#Method to call the input to run process

# def greet(name)
#   "Hello #{name}"
# end
# puts greet("leon")

# def greet(name)
#   puts "Hello #{name}"
# end
# greet("leon")

# names = ["Jess", "Noah", "Alanna", "Charles", "Noah", "Damen", "Audreana"]
# def greet(array)
#   array.each do |names|
#     p "Hi #{names}"
# end

# greet(names )


# def square
#   puts "Please enter a number to square"
#   num =gets.chomp.to_i
#   num = num*num
#   puts num
# end
nums = [1, 3, 5, 7]


# def sum_array(input)
#   total = 0
#   input.each do |num|
#     total += num
#   end
#   return total
# end

# sum_array(num1)

# def get_even_number(nums)
#   even_numbers = []
#   nums.each do |n|
#     if n.even_numbers.push (n)
#     end
# end

# p get_even_number(numbers)

list =["Leon", "Bucket", "Car", "Abs", "tech", "Patrick", "Tan"]
list2 = ["Link", "Zelda", "Tri", "Midna", "Nix", "man", "dunk"]

# def filter_long_words(word)
#   words =[]

#   word.each do |l|
#     if l.length > 3
#       words.push(l)
#      end
#   end
#   return words
# end

# puts filter_long_words(list)

# def filter_short_words(word)
#   words =[]

#   word.each do |l|
#     if l.length <= 3
#       word.unshift
#     else
#       words.push(l)
#      end
#   end
#   return words
# end

# puts filter_short_words(list2)
scores = [50, 60, 75, 89, 90, 98, 30]

def grade_students(score)
  score.each do |n|  # dont forget the variable needs to be in pipe "||" not ()
   if n >= 90
      puts "A - #{n}"
    elsif
      n < 90 && n >= 80
     puts "B - #{n}"
    elsif
      n < 80 && n >= 70
      puts "C - #{n}" 
    elsif
      n < 70 && n >= 60
      puts "D - #{n}"
   else
      puts "F - #{n}"
    end
  end
end


grade_students(scores)