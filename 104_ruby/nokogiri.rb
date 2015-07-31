require 'nokogiri'
require 'open-uri'

#grab HTML for the recipe
doc = Nokogiri::HTML(open("http://www.marthastewart.com/312598/brick-pressed-sandwich"))

#get the list with the class .components-item that is each ingredient
list = doc.css('.components-item')

#loop through the ingredients and put just the text on the screen, no HTML
list.each do |ingredients|
    puts ingredients.inner_html
end
