shopping_list = []
loop do
puts "Welcome to the menu. Please select an option
1 - Add item
2 - Remove item
3 - View List
4 - Exit"


  choice = gets.chomp.to_i
  if choice == 1
    puts "Please add to shopping list"
    item = gets.chomp
   shopping_list.push(item)
    puts " Your list has been update #{shopping_list}
    "

  elsif choice == 2
    puts shopping_list
    puts "Please choose an item to remove from the shopping list. (Input index number)"
    item = gets.chomp.to_i
    if item > shopping_list.length
      puts "Shopping list not long enough. Please input another index number
      "
    else
    shopping_list.delete_at(item)
    puts " Your list has been update #{shopping_list}
    "
    end
  elsif choice == 3
    puts SHOPPING List
    shopping_list
  elsif choice == 4
    puts "Shop till you drop ♡♡"
    break
  else
    puts "Selection invalid."
  end
end

 
 