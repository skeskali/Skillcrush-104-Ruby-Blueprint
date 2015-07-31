class Makeup
    def set_name=(product_name)
        @product_name = product_name
    end

    def get_name
        return @product_name
    end

    def set_brand=(brand_name)
        @brand = brand_name
    end

    def get_brand
        return @brand
    end
end

class Lipstick < Makeup
    def set_finish=(finish)
        @finish = finish
    end

    def get_finish
        return @finish
    end

end

class Brows < Makeup
    def set_formula=(formula)
        @formula = formula
    end

    def get_formula
        return @formula
    end
end


my_lips=Lipstick.new
my_lips.set_name = 'RiRi Viva Glam 2'
my_lips.set_brand = 'M.A.C.'
my_lips.set_finish = 'frost'
lipstick_name = my_lips.get_name
lipstick_brand = my_lips.get_brand
lipstick_finish = my_lips.get_finish

my_brows = Brows.new
my_brows.set_name = 'Brow Zings'
my_brows.set_brand = 'Benefit'
my_brows.set_formula = 'pancake'
brow_name = my_brows.get_name
brow_brand = my_brows.get_brand
brow_formula = my_brows.get_formula

puts "My favourite lipstick is #{lipstick_name} by #{lipstick_brand}. It has a #{lipstick_finish} finish."
puts "I use #{brow_brand} #{brow_name} to keep my eyebrows in check. It is available as a #{brow_formula} formula."

puts my_lips.inspect
puts my_brows.inspect
