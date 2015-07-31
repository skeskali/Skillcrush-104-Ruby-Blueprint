puts "Give me a number."
# Change number into an integer and set to a variable
first_number = gets.to_i

#set value of last number variable to equal the value of the first number
last_number = first_number

#add 5
last_number += 5

#multiply 2
last_number *= 2

#subtract 4
last_number -= 4

#divide by 2
last_number /= 2

#subtract the last number from the first number
last_number -= first_number

#what's the last number?
puts "Always #{last_number}."
