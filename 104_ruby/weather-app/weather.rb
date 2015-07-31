require 'yahoo_weatherman'

# get current location from user
def getLocation
    puts "What is your location? Please enter city or postal code."
    location = gets.chomp
end

# get current location from Yahoo Weatherman gem by looking it up

def locationLookup(currLoc) 
    client = Weatherman::Client.new
    client.lookup_by_location(currLoc)
end

# get current conditions in Celsius and print to screen.
 def getCurrentConditions(location, currLoc)
    tempInC = location.condition['temp']
    forecast = location.condition['text']

    puts "It is currently #{tempInC} ˚C and #{forecast} in #{currLoc}."
end

# get the long range forecast and print to screen
def getForecast(location, today)
    forecasts = location.forecasts

    # for each forecast, set the weekday, predicted high temp and predicted low temp
    forecasts.each do |forecast|
        weekday = forecast['date']
        day = weekday.strftime('%A')
        weather = forecast['text'].downcase
        predHigh = forecast['high'].to_i
        predLow = forecast['low'].to_i

        dayNum = weekday.strftime('%w')

        # set the correct day of the week in the forecast using a conditional statement
        if dayNum == today
            weekday = "Today"
        elsif dayNum == today + 1 || dayNum == today -6
            weekday "Tomorrow"
        else
            weekday = day
        end

        puts "#{weekday}'s forecast is #{weather} with a high of #{predHigh} ˚C and a low of #{predLow} ˚C."
    end
end
                


currLoc = getLocation
location = locationLookup(currLoc)
today = Time.now.strftime('%w').to_i

#call the getCurrentConditions method with parameters for location & location lookup
getCurrentConditions(location, currLoc)

#call the getForecast method with parameters for location and day of the week
getForecast(location, today)

