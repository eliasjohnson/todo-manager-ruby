# test todo_item = gets.chomp

# puts "fuck you #{todo_item}!"


# test iterating through a list
# grocery_list = ["apples","oranges","Bannanas"]

# grocery_list.each do |item|
#     puts "you need to get #{item}"
# end


# more array practice

# fruits = ["apple","banana","orange","Grape"]

# puts "=== My Fruits ==="
# fruits.each do |fruit|
#     puts "I like #{fruit}"
# end

# puts "\n=== Uppercase Fruits ==="
# fruits.each do |fruit|
#     puts fruit.upcase
# end

# puts "\n=== Numbered list ==="
# counter = 1
# fruits.each do |fruit|
#     puts "#{counter}. #{fruit}"
#     counter += 1
# end

# # OR same thing but with the array method
# puts "\n=== Again but with array method ==="
# fruits.each_with_index do |fruit, index|
#     puts "#{index +1}. #{fruit}"
# end

# def create_file(file_name)
#   File.new("#{file_name}","w")
# end

# create_file("fart.txt")


# my_list = File.readlines("todos.txt")

# my_list.each do |index|


# arrays methods help 

todos = ["Learn Ruby", "", "Build app", ""]

# .each - Just visit each item (doesn't change anything)
todos.each do |todo|
  puts todo  # Just prints them
end
# Returns: ["Learn Ruby", "", "Build app", ""] (unchanged)

# .map - Transform each item into something new
todos.map do |todo|
  todo.upcase  # Make each one uppercase
end
# Returns: ["LEARN RUBY", "", "BUILD APP", ""]

# .select - Keep items that match a condition  
todos.select do |todo|
  !todo.empty?  # Keep non-empty ones
end
# Returns: ["Learn Ruby", "Build app"] (empty ones removed)

# .reject - Remove items that match a condition
todos.reject do |todo|
  todo.empty?  # Remove empty ones
end
# Returns: ["Learn Ruby", "Build app"] (same result as select, opposite logic)