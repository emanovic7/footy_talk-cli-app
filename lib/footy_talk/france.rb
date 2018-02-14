require 'pry'
require 'nokogiri'
require 'open-uri'


class FootyTalk::France

  attr_accessor :name, :position, :points, :goals_conceded, :goals_scored, :highest_scorer, :next_match

  @doc = Nokogiri::HTML(open("http://www.espn.com/soccer/standings/_/league/fra.1"))

  def self.teams
    @team_1 = self.new
  end
  def self.standings
    puts "Welcome to Ligue 1"
    puts @doc.search("section#main-container h1").text
  end





end
