require 'yahoo_weatherman'

puts "What is your location? Enter the city name or postal code."
location = gets.chomp

def getLocation(location)
    client = Weatherman::Client.new
    weather = client.lookup_by_location(location)
end


weather = getLocation(location)

today = Time.now.strftime('%w').to_i

weather.forecasts.each do |forecast|
    day = forecast['date']
    weekday = day.strftime('%w').to_i

    if weekday == today
        dayName = 'Today'
    elsif weekday == today +1
        dayName = 'Tomorrow'
    else
        dayName = day.strftime('%A')
    end


    puts dayName + ' is going to be ' + forecast['text'].downcase + ' with a low of ' + forecast['low'].to_s + '°C and a high of ' + forecast['high'].to_s + '°C'

end
