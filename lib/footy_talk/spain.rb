require 'pry'
require 'nokogiri'
require 'open-uri'


class FootyTalk::Spain

  attr_accessor :name, :position, :points, :goals_conceded, :goals_scored, :highest_scorer, :next_match

  @doc = Nokogiri::HTML(open("http://www.espn.com/soccer/table/_/league/esp.1"))

  def self.teams
    @team_1 = self.new
  end
  def self.standings
    puts "Welcome to La Liga"
    puts @doc.search("section#main-container h1").text
    standings = @doc.search("section#main-container span.team-names")
    standings.each do |name|
      puts name.text
    end
  end




end
