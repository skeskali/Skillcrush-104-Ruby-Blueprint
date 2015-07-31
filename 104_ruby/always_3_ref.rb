# Refactor your Always 3 script to use only two variables. 

# Ask the user for a number
puts "Give me a number."

# Take the first number and set it to a variable
first_number = gets.to_i

# set a final number variable for all the math

final_number = first_number

# add 5 to the final_number 
final_number += 5

# multiply final_number by 2
final_number *= 2

# subtract 4 from final_number
final_number -= 4

# divide final_number by 2
final_number /= 2

# subtract final_number from first_number
final_number -= first_number

# print the answer to the screen
puts "Always #{final_number}!"