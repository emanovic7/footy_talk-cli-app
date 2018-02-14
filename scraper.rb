require 'pry'
require 'nokogiri'
require 'open-uri'
require 'pry'


doc = Nokogiri::HTML(open("http://www.espn.com/soccer/table/_/league/eng.1"))

name = doc.search("section#main-container h1").text

puts name

#categories = doc.search("section#main-container.page-container span.team-names")[0].text
#puts categories


#row = doc.search("section#main-container.page-container td").text
#puts row
