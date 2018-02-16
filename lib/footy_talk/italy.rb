require 'pry'
require 'nokogiri'
require 'open-uri'


class FootyTalk::Italy

  attr_accessor :name, :position, :points, :goals_conceded, :goals_scored, :highest_scorer, :next_match

  @doc = Nokogiri::HTML(open("http://www.espn.com/soccer/standings/_/league/ita.1"))

  def self.teams
    @team_1 = self.new
  end
  def self.standings
    puts "Welcome to Serie A"
    puts @doc.search("section#main-container h1").text
    standings = @doc.search("section#main-container span.team-names")
    standings.each do |name|
      puts name.text
    end
  end




end
