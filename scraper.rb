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
standings = doc.search("section#main-container span.team-names")
standings.each do |name|
  puts name.text
end

=begin
points = doc.search("tr.standings-row td")
points.each do |point|
  puts point.text
end
=end

docc = Nokogiri::HTML(open("http://www.goal.com/en-us/premier-league/fixtures-results/2kwbbcootiqqgmrzs6o5inle5"))
table = docc.search("div.main-content div.match-row.status-pld")
table.each do |row|
  puts row.text
end
