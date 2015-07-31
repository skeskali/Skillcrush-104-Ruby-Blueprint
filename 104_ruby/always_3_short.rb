# Refactor your Always 3 script to use only two variables. 

# Ask the user for a number
puts "Give me a number."

# Take the first number and set it to a variable
first_number = gets.to_i

puts "Always " + (((first_number + 5) * 2 - 4) / 2 - first_number).to_s