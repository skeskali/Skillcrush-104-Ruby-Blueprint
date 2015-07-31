# Ask user for a first_number
puts "Give me a number"

# take user's number and change it to an integer
first_number = gets.to_i

# set a final number variable and set the value of final_number to the first_number

final_number = first_number

# add 5
final_number += 5

# multiply by 2
final_number *=2

# subtract 4
final_number -= 4

# divide by 2
final_number /= 2

# subtract the final number from the first number
final_number -= first_number

# Tell user the final number
puts "Always #{final_number}!"
