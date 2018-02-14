require 'pry'
require 'nokogiri'
require 'open-uri'


class FootyTalk::Germany

  attr_accessor :name, :position, :points, :goals_conceded, :goals_scored, :highest_scorer, :next_match

  @doc = Nokogiri::HTML(open("http://www.espn.com/soccer/standings/_/league/ger.1"))


  def self.teams
    @team_1 = self.new
  end
  def self.standings
    puts "Welcome to the Bundesliga"
    puts @doc.search("section#main-container h1").text
  end




end
