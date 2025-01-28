#hashes
#{key => value, key => value}

#EXAMPLE
#STRING HASH SYNTAX
# person = {
#   "name" => "Alice",
#   "age" => 30,
#   "city" => "New York" }

#SYMBOL SYNTAX
person = {
  name: "Alice",
  age: 30,
  city: "New York" }


#to print out specific like printing out Alice would be
# p person["name"]

# to add string and call the Hash need to interpolation for calling in a string "string #{key[:value_want]}"


# puts  "Hi #{me[:name]}"
# p me[:age]
# puts me[:hobby]

#to replace a value
# numbers[0] = 10 #changes 1 in array

#to change name of Hash
# p person
# person[:name] = "Damen" #redeclares person[:name] is

# p person # changes the name in the hash from Alice to Damen

# person[:country] = "USA" #syntax adds key value pair of country: "USA" like .push
# person.delete(:city) #syntax in ruby to delete a value
# p "Hi I like UwU stuff and play #{me[:hobby]} I am #{person[:age]}"
me = {
  name: "Charles",
  age: 27,
  hobby: "Magic:The Gathering" 
}
  
me[:favorite_food] = "Spam fettuccine"
# puts me
me[:hobby] = "Super Smash Bros"
# p me
# me.delete(:age)
# p me


# numbers = [1, 2, 3, 4, 5]
# numbers.each do |number|
#   p number
# end

person = {
name: "Alice",
age: 30,
city: "New York" }


#ITERAING HASH
# person.each do |key, value|
#   puts "key = #{key} and value = #{value}"
# end

# me.each do |key, value|
#   puts "My #{key} is #{value} ≽^•⩊•^≼"
# end

#COMBINING HASHES AND ARRAYS

#array_name = [
# {value: "info", value1: "infor"},
# {1value: "inform"}]

#An Array having hash inside p array_name[index][:hash_value]

people = [
  {name: "Charles", age: 27, city: "Soufside 凸ಠ益ಠ)凸" },
  {name: "Jeremy", age: 32, city: "Baltimore" },
  {name: "Patrick", age: 24, city: "West End" },
  {name: "Audreana", age: 27, city: "Da Norf 凸ಠ益ಠ)凸" }
]

people.each do |files| #Array and hashes need to print one at a time
  p "Hi my name is #{files[:name]}"
  p "Im age #{files[:age]} 🥰"
  p "Im from #{files[:city]}"
  p "----------------------"
end



#hashes
#idealwhen we need to associate values with keys
#ex. students information (name, age, gender)
# person = {
# name: "Alice",
# age: 30,
# city: "New York" }
# person[:name]
# person[:age]



#arrays
#some sort of ordered list
#a list of all the students
# numbers = [1, 2, 3, 4, 5]
# numbers[0]