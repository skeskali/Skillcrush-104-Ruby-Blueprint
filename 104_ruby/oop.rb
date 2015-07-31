class Cat
    def set_name=(cat_name)
        @name = cat_name
    end

    def get_name
        return @name
    end

    def set_color=(fur_color)
        @color = fur_color
    end

    def get_color
        return @color
    end

    def set_owner=(owner_name)
        @owner_name = owner_name
    end

    def get_owner
        return @owner_name
    end

    def sound
        return "meow"
    end
end

my_cat = Cat.new
my_cat.set_name = 'Ella'
my_cat.set_color = 'tabby'
cat_name = my_cat.get_name
cat_color = my_cat.get_color
puts "#{cat_name}, my #{cat_color} cat, says #{my_cat.sound}!"

puts my_cat.inspect
