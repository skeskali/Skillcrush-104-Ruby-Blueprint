# ask the user what their favourite color is
puts "What is your favourite colour?"

#turn favourite color into a variable, fave_colour
fave_colour = gets.chomp

# print out message based on colour entered
    if (fave_colour == 'red')
        puts "Red like fire!"
    elsif (fave_colour  =='orange')
        puts "Orange like an orange"
    elsif (fave_colour == 'yellow')
        puts "Daffodils are so pretty in the spring"
    elsif (fave_colour == 'green')
        puts "Have you visited the Emerald City?"
    elsif (fave_colour == 'blue')
        puts "That's the best colour!"
    elsif (fave_colour == 'purple')
        puts "Purple plums are the tastiest"
    else puts "Hmm, I don't know what that colour is."
    end