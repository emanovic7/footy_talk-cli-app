require 'pry'
require 'nokogiri'
require 'open-uri'


class FootyTalk::England

  attr_accessor :name, :position, :points, :goals_conceded, :goals_scored, :highest_scorer, :next_match

  @doc = Nokogiri::HTML(open("http://www.espn.com/soccer/table/_/league/eng.1"))
  @fix = Nokogiri::HTML(open("http://www.goal.com/en-us/premier-league/fixtures-results/2kwbbcootiqqgmrzs6o5inle5"))

    def self.teams
      @team_1 = self.new
      @team_1.name = "Manchester United"
      @team_1.position = "1"
      @team_1.points = "89"
      @team_1.goals_scored = "99"
      @team_1.goals_conceded = "2"
      @team_1.next_match = "Arsenal"
      @team_1.highest_scorer = "Alexis Sanchez"

      #@team_2 = self.new
      #@team_2.name = " "
    end

    def self.standings
      puts "Welcome to the English Premier League"
      puts @doc.search("section#main-container h1").text
      standings = @doc.search("section#main-container span.team-names")
      standings.each do |name|
        puts name.text
      end
    end
=begin
    def self.fixtures
      puts "These are the Week's Results"
      results = @fix.search("div.main-content div.match-row.status-pld")
      results.each do |result|
        puts result.text
      end
    end
=end

  def self.statistics
    puts "Choose from the following stats, or menu to return: "
  end



end
