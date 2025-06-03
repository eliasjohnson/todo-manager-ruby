# my todo list manager, 3nd ruby program ever! interated on the original todo_manager but now with data storage!

# define/declare array (the storage part)
todos = []

loop do
    puts "\nWelcome to your To-Do Manager.\n"
    puts "What would you like to do?:"
    puts "1. Add a to-do"
    puts "2. View your to-do's"
    puts "3. Mark a to-do as complete"
    puts "4. Quit Program"

    choice = gets.chomp.to_i

    if choice == 1
        puts "what to-do would you like to add?"
        todo_item = gets.chomp
        # add the todo item to the todos array
        todos << todo_item
        puts "Added: '#{todo_item}' to your list"

    elsif choice == 2
        puts "Here are your to-do's:"
        if todos.empty?
            puts "No To-Do's yet. Add some."
        else
            todos.each do |todo|
                puts "- #{todo} (incomplete)"
            end
        end

    elsif choice == 3
        puts "which to-do di you complete? (coming soon...)"

    elsif choice == 4
        puts "Goodbye!"
        break #exits the loop because they want to leave
    else
        puts "Sorry, Invalid choice. Please try again."
    end
end