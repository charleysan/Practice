# # nested_hashes.rb

# # Representing a person with nested details
# person = {
#   name: "Alice",
#   contact: {
#     email: "alice@example.com",
#     phone: "123-456-7890"
#   },
#   address: {
#     street: "123 Main St",
#     city: "Wonderland",
#     zip: "12345"
#   }
# }

# # Accessing nested values
# puts person[:contact][:email]  # Outputs: alice@example.com
# puts person[:address][:city]   # Outputs: Wonderland

# student = {
#   name: "Alice",
#   grades: {
#     math: 90,
#     science: 85,
#     literature: 88
#   },
#   contact: {
#     email: "alice@example.com",
#     phone: "123-456-7890"
#   }
#   {
#   name: "Rabbit",
#   grades: {
#     math: 88,
#     science: 70,
#     literature: 95
#   },
#   contact: {
#     email: "alice@example.com",
#     phone: "123-456-7890"
#   }
# }


# p student[:grades][:literature] #88

# p student[:grades] #gets me the grade hash

# p student[:grades].each do |subject, score|
#   puts "#{subject.capitalize}: #{score}"
#   puts subject, score
# end

# p student[:contact] #prints contact hash

# student[:contact].each do |key, value|
#   puts key, value
# end

student = {
  alice: { math: 90, science: 85, literature: 88 },
  bob: { math: 88, science: 70, literature: 95 },
  hatter: { math: 72, science: 84, literature: 86 }
}


# student.each do |name, grade|
#   p "#{name}:"
#   grade.each do |subject, score|
#     puts "#{subject}: #{score}"
#   end
# end

# students[:bob][:math]= 85 #modifying value
# students[:alice].delete(:science) #deleting alices science grade
# students[:bob][:PE] = 100 #creating a new key value pair

# student[:hatter][:tea_time] = 100
# student[:bob][:math] = 85
# student[:hatter].delete(:math)

products = [
  { name: "Laptop", price: 1000, tags: ["electronics", "computers"] },
  { name: "Book", price: 20, tags: ["education", "literature"] },
  { name: "Coffee Mug", price: 10, tags: ["kitchen", "beverage"] }
]