require 'pry'
require 'nokogiri'
require 'open-uri'
require 'pry'


doc = Nokogiri::HTML(open("http://www.espn.com/soccer/table/_/league/eng.1"))

standings = doc.search("section#main-container.page-container span.long-caption").text
puts standings

position = doc.search("section#main-container.page-container span.number")
position.each do |number|
    puts number.text

end

#categories = doc.search("section#main-container.page-container span.team-names")[0].text
#puts categories


#row = doc.search("section#main-container.page-container td").text
#puts row
