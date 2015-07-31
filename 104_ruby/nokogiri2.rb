require 'nokogiri'
require 'open-uri'

doc=Nokogiri::HTML(open('http://www.theweathernetwork.com/weather/canada/british-columbia/gastown/V5Y0C9/W4568898'))

list = doc.css('.temperature-area-clearfix')
puts list