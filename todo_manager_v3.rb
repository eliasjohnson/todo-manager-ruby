# third iteration (fourth program ever) of todo manager. this one will have the ability to complete to-do's. (remove them from the list)

# define/declare array (the storage part)
todos = [] # Things I still need to do
completed_todos = [] # Things I've finished (for satisfaction/tracking)

loop do
    puts "\nWelcome to your To-Do Manager.\n"
    puts "What would you like to do?:"
    puts "1. Add a to-do"
    puts "2. View your to-do's"
    puts "3. Mark a to-do as complete"
    puts "4. Delete a To-do"
    puts "5. Exit program"

    choice = gets.chomp.to_i
    # Add Todo
    if choice == 1
        puts "what to-do would you like to add?"
        todo_item = gets.chomp
        # add the todo item to the todos array
        todos << todo_item
        puts "Added: '#{todo_item}' to your list"
    # View Todo
    elsif choice == 2
        puts "Here are your to-do's:"
        if todos.empty?
            puts "No To-Do's yet. Add some."
        else
            todos.each do |todo|
                puts "- #{todo} (incomplete)"
            end
        end

        unless completed_todos.empty?
            puts "\nCompleted To-do's:"
            completed_todos.each do |todo|
                puts "✓ #{todo} (Completed)"
            end
        end

    #Complete todo
    elsif choice == 3
        # is the array empty?
        if todos.empty?
            puts "No todos to complete!"
        else
            # list out the todos
            puts "Which todo did you complete?"
            todos.each_with_index do |todo, index|
                puts "#{index + 1}. #{todo}"
            end
            # get the index of the array item from user into variable completed choice.
            completed_choice = gets.chomp.to_i

            #Is the user's choice a valid number? (between 1 and however many todos exist)
            if completed_choice >= 1 && completed_choice <= todos.length
                # Get the todo at that position (minus 1 because arrays start at 0, but we show users 1, 2, 3...)
                completed_todo = todos[completed_choice - 1]
                completed_todos << completed_todo # add completed_todo list/array
                todos.delete_at(completed_choice - 1) # remove it from the active list/array
                puts "Completed: '#{completed_todo} - Nice work!"
            else
                puts "Invalid choice, please try again."
            end
        end
    # delete to-do
    elsif choice == 4
        if todos.empty?
            puts "No to-do's to remove. try another option."
        else
            puts "Select a to-do to remove:"
            todos.each_with_index do |todo, index| #iterate through list of to-dos
                puts "#{index + 1}. #{todo}" # print them all
            end
            remove_choice = gets.chomp.to_i #get input
            if remove_choice >= 1 && remove_choice <= todos.length
                removed_choice = todos[remove_choice - 1]# get the todo for data confirmation at end of else block
                todos.delete_at(remove_choice - 1) # delete the todo with the index of the choice from todo list
                puts "Successfully removed '#{removed_choice}'."
            else
                puts "invalid choice, please enter a valid to-do item."
            end
        end
    elsif choice == 5
        puts "Goodbye!"
        break #exits the loop because they want to leave
    else
        puts "Sorry, Invalid choice. Please try again."
    end
end