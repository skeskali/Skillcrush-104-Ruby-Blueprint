class Vehicle
    def set_name=(model_name)
        @name = model_name
    end

    def get_name
        return @name
    end

    def set_company=(company_name)
        @company_name = company_name
    end

    def get_company
        return @company_name
    end

    def set_type=(body_type)
        @type = body_type
    end

    def get_type
        return @type
    end

    def set_color=(color)
        @color = color
    end

    def get_color
        return @color
    end
end

class Car < Vehicle
    def grump
        return "arrrrgh"
    end
end

class Scooter < Vehicle
    def shout
        return "wooohooo"
    end
end

class Bike < Vehicle
    def yawp
        return "wheeeeee"
    end
end

my_car = Car.new
my_car.set_name = 'Focus'
my_car.set_company = 'Ford'
car_name = my_car.get_name
car_comp = my_car.get_company

my_scooter = Scooter.new
my_scooter.set_name = 'Primavera'
my_scooter.set_company = 'Vespa'
scooter_name = my_scooter.get_name
scooter_comp =my_scooter.get_company

my_bike = Bike.new
my_bike.set_name = 'Betty Foy'
my_bike.set_company = 'Rivendell'
bike_name = my_bike.get_name
bike_comp = my_bike.get_company

puts "When I ride my #{scooter_comp} #{scooter_name} I say, #{my_scooter.shout}. When I ride my #{bike_comp} #{bike_name} I say, #{my_bike.yawp}. But when I drive my #{car_comp} #{car_name}, I say #{my_car.grump}."


puts my_car.inspect
puts my_bike.inspect
puts my_scooter.inspect
