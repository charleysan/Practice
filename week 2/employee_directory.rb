# Activity:
# Task: Create a program that manages a list of employees, where each employee has:
# A name (string)
# A position (string)
# A list of skills (array)
# Contact information (hash with :email and :phone)
# Instructions:
# Create a file named employee_directory.rb.
# Define an array of employee hashes.
# Iterate over the array to display each employee's information

employee = [
{name: "Charles", position: "cook", skills: ["fast worker", "team oriented"], contact: {email: "charles@email.com", phone: 671} },
{name: "Damen", position: "dishwasher", skills:["great communication", "fast worker"], contact: {email: "damen@email.com", phone: 671} }
]

# p employee

employee.each do |name|
  puts name[:name]
  puts name[:position]
  puts name[:skills]
  p name[:contact][:email]
  puts "Phone number is #{name[:contact][:phone]}"
  puts " -------------------- "
end

#OUTPUT
# Charles
# cook
# fast worker
# team oriented
# "charles@email.com"
# Phone number is 671
#  -------------------- 
# Damen
# dishwasher
# great communication
# fast worker
# "damen@email.com"
# Phone number is 671
#  -------------------- 