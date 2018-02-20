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

=begin this is the standings
standings = doc.search("section#main-container span.team-names")
standings.each do |name|
  puts name.text
end
=end

=begin this is the prem league scores
docc = Nokogiri::HTML(open("http://www.goal.com/en-us/premier-league/fixtures-results/2kwbbcootiqqgmrzs6o5inle5"))
table = docc.search("div.main-content div.match-row.status-pld")
table.each do |row|
  puts row.text
end
=end


@dok = Nokogiri::HTML(open("http://www.espnfc.us/english-premier-league/23/statistics/scorers"))
  stats = @dok.search("div#stats-toggle.toggle li")[1]
  puts stats.text
  puts "Name --- Team --- Goals"
=begin
def player_1
  top_scorer = @dok.search("div#stats-top-scorers td[headers = player]")[0]
  puts top_scorer.text

  goals = @dok.search("div#stats-top-scorers td[headers = goals]")[0]
  puts goals.text
end

def player_2
  top_scorer = @dok.search("div#stats-top-scorers td[headers = player]")[1]
  puts top_scorer.text

  goals = @dok.search("div#stats-top-scorers td[headers = goals]")[1]
  puts goals.text
end

def player_3
  top_scorer = @dok.search("div#stats-top-scorers td[headers = player]")[2]
  goals = @dok.search("div#stats-top-scorers td[headers = goals]")[2]
  puts "#{top_scorer.text}  #{goals.text}"
end

player_1
player_2
player_3
=end


statsss = @dok.search("div#stats-top-scorers tr")
some = []
statsss.each do |one|
  some << one.text.gsub(/\s+/, " ")
end
puts some[1..5]
