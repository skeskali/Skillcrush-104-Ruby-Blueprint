# Ask the user for their birthdate
puts "What is your birthdate? Please enter in format MMDDYYYY."

# Retrieve the user input and turn it into a variable.
bdate = gets

# Add the numbers of the birthdate together and assign the result to a new variable. Use array syntax, and convert the birthdate string to an integer before adding the numbers together.

number = bdate[0].to_i + bdate[1].to_i + bdate[2].to_i + bdate[3].to_i + bdate[4].to_i + bdate[5].to_i + bdate[6].to_i + bdate[7].to_i

# convert the number back to a string
number = number.to_s

# get each number individually using array syntax and convert it back to an integer
number = number[0].to_i + number[1].to_i

# write an if statement to check to see if the number is less than 9. If it is greater than 9, reduce again by converting to an integer.
if number > 9
    number = number[0].to_i + number[1].to_i
end

# display user's number and the meaning using a case statement

case number
when 1
    puts "Your numerology number is #{number}. \nOne is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."

when 2
    puts "Your numerology number is #{number}. \nThis is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."

when 3
    puts "Your numerology number is #{number}. \nNumber Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."

when 4
    puts "Your numerology number is #{number}. \nThis is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."

when 5
    puts "Your numerology number is #{number}. \nThis is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."

when 6
    puts "Your numerology number is #{number}. \nThis is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."

when 7
    puts "Your numerology number is #{number}. \nThis is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."

when 8
    puts "Your numerology number is #{number}. \nThis is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."

when 9
    puts "Your numerology number is #{number}. \nThis is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
end
