# Exercise:
# Create a simple command-line address book application.
# Instructions:
# Create a file named address_book.rb.
# Program Requirements:
# The program should display a menu with options:
# Add a contact
# View all contacts
# Search for a contact
# Exit
# Add a Contact:
# Prompt the user for the contact's name, phone number, and email.
# Store each contact as a hash within an array.
# View All Contacts:
# Display all contacts with their details.
# Search for a Contact:
# Prompt for the name to search.
# Display the contact's information if found.

list = []

def add_address(task_list)

  puts "Please enter contact name"
  contact = gets.chomp
  puts "Please enter contact phone number"
   phone_number = gets.chomp.to_i
  puts "Please enter email"
  email = gets.chomp

  task_list << { contact: contact, phone_number: phone_number, email: email }
  
  return task_list
end

def view_address(task_list)
  if task_list.empty? #.empty? checks if no data
    puts " No contacts available"
  else
    task_list.each do |files| #Array and hashes need to print one at a time
    p "NAME #{files[:contact]}"
    p "NUMBER #{files[:phone_number]}"
    p "EMAIL #{files[:email]}"
    p "--------------------------"
    end
  end  
end

def look(task_list)
  puts "Enter name of contact you want to look up"
  input = gets.chomp
  
  task_list.each do |file|
    
    if input == file[:contact]
      
      puts "Contact found!"
      p "NAME #{file[:contact]}"
      p "NUMBER #{file[:phone_number]}"
      p "EMAIL #{file[:email]}"
      p "--------------------------"
      # return task_list
    else
      nil
    end
  end
end

def leave(task_list)
  
  puts "♡Exiting♡"

end






loop do
  puts "------------------"
  puts "To-Do List Menu"
  puts "Please select from the options below
  1. Add address
  2. View all contacts
  3. Search contacts
  4. Exit"
  puts "------------------"
  
  puts "Please enter your selection"
  choice = gets.chomp.to_i
  
    
    if choice == 1
      add_address(list)
  
    elsif choice == 2
      view_address(list)

    elsif choice == 3
      look(list)

    elsif choice == 4
      leave(list)
      break           #breaks can only exit in loops not in methods

    else
      puts "Selection invalid."
    end
end


# address = [
#   {name: "Charles", num: 27, email: "凸ಠ益ಠ)凸"},
#   {name: "Jeremy", num: 32, email: "Baltimore" },
#   {name: "Patrick", num: 24, email: "West End" }, 
# ]


