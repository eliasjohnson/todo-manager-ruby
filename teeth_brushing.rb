# my first ruby program

puts "How dirty are your teeth on a scale of 1-10? (10 being very dirty)"
dirtiness_level = gets.chomp.to_i

if dirtiness_level > 7
    brushing_time = 3
    result = "squeaky clean"

elsif dirtiness_level > 4
    brushing_time = 2
    result = "clean"
else
    brushing_time = 1
    result = "fresh"
end

puts "Because of your selected dirtiness level #{dirtiness_level}, you should brush for #{brushing_time} minutes, to achieve a #{result} result."
