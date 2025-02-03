# Project Requirements:
  # User Interface:
    # Display a menu with options:
    # Add a task
    # View tasks
    # Mark task as completed
    # Delete a task
    # Exit
  # Functionalities:
  # Add a Task:
    # Prompt the user to enter a task description.
    # Store the task in an array.
  # View Tasks:
    # Display all tasks with their status (completed/not completed).
  # Mark Task as Completed:
    # Allow the user to mark a specific task as completed.
  # Delete a Task:
    # Allow the user to delete a specific task.
  # Exit:
    # Terminate the application.

# Print out list functions
    #5 functions/ methods to make
    #add,View, complete, delete, exit
    
tasks = []

def add_task(task_list)

  puts "Input task would like to add"
  item = gets.chomp
  task_list << { :item => item, completed:  false }  #append method to help with adding to an array
  puts " Your task, #{item} has been added "

end

def view_task(task_list)
  if task_list.empty? #.empty? checks if no data
    puts " No current tasks #{task_list}"
  else
    task_list.each_with_index do |item, index|
    finish = item[:completed] ? "Completed" : "Not Completed"
    puts "#{index + 1}. [#{finish}] #{item[:item]}"
    end
  end  


end

def del_task(task_list)
  view_task(task_list)
  puts "Please choose an item list number to remove from the task list."
index = gets.chomp.to_i - 1
 
  if task_list.delete_at(index)
    puts " Task has been removed "
  else
    puts "Task has not been found"
  end
  puts "\n"
  return (task_list)
end

def leave(task_list)
 
  puts "♡Exiting♡"

end

def comp(task_list)
 
  puts "Which task number would you like to mark complete?"

  item = gets.chomp.to_i - 1

  if task_list[item]
    puts " Task has been completed "
    task_list[item][:completed] = true
  else
    puts "Task #{item} has not been found"
  end
  puts "\n"
  return (task_list)


end





loop do
  puts "------------------"
  puts "To-Do List Menu"
  puts "Please select from the options below
  1. Add a task
  2. View all tasks
  3. Mark task as complete
  4. Delete a task
  5. Exit"
  puts "------------------"
  
  puts "Please enter your selection"
  choice = gets.chomp.to_i
  
    
    if choice == 1
      add_task(tasks)
  
    elsif choice == 2
      view_task(tasks)

    elsif choice == 3
      comp(tasks)

    elsif choice == 4
      del_task(tasks)

    elsif choice == 5
      leave(tasks)
      break           #breaks can only exit in loops not in methods

    else
      puts "Selection invalid."
    end
  end