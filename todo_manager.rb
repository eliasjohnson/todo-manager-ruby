# my todo list manager, 2nd ruby program ever!

puts "welcome to your To-Do Manager."
puts "What would you like to do?:"
puts "1. Add a to-do"
puts "2. View your to-do's"
puts "3. Mark a to-do as complete"
puts "4. Quit Program"

choice = gets.chomp.to_i

if choice == 1
    puts "what to-do would you like to add?"
    todo_item = gets.chomp
    puts "Added: '#{todo_item}' to your list"

elsif choice == 2
    puts "Here are your to-do's:"
    puts "- Learn Ruby (incomplete)"
    puts "- Build to-do app (Incomplete)"

elsif choice == 3
    puts "which to-do di you complete? (coming soon...)"

elsif choice == 4
    puts "Goodbye!"

else
    puts "Sorry, Invalid choice. Please try again."
end
