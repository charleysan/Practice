# Task: Build a program that allows users to:
# Add new items to a catalog.
# Each item should have a name, category, price, and tags.
# Display all items in the catalog.
# Instructions:
# Create a file named catalog.rb.
# Use arrays and hashes to store item data.
# Implement a simple menu to interact with the catalog.

list = []

def add_item(task_list)

  puts "Please enter item name"
  name = gets.chomp
  puts "Please enter item category"
  category = gets.chomp
  puts "Please enter price"
  price = gets.chomp.to_i
  puts "Please input associated tag"
  tags = gets.chomp

  task_list << { name: name, category: category, price: price, tags: tags }
  p task_list
  return task_list
end


def view_item(task_list)
  if task_list.empty? #.empty? checks if no data
    puts " No items listed"
  else
    task_list.each do |files| #Array and hashes need to print one at a time
    p "NAME #{files[:name]}"
    p "CATEGORY #{files[:category]}"
    p "PRICE #{files[:price]}"
    p "TAGS #{files[:tags]}"
    p "----------"
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
  1. Add item
  2. View all catalogue items
  3. Exit"
  puts "--------"
  
  puts "Please enter your selection"
  choice = gets.chomp.to_i
  
    
    if choice == 1
      add_item(list)
  
    elsif choice == 2
      view_item(list)

    elsif choice == 3
      leave(list)
      break           #breaks can only exit in loops not in methods
      
    else
      puts "Selection invalid."
    end
end
