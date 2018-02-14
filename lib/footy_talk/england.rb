require 'pry'
require 'nokogiri'
require 'open-uri'


class FootyTalk::England

  attr_accessor :name, :position, :points, :goals_conceded, :goals_scored, :highest_scorer, :next_match

  doc = Nokogiri::HTML(open("http://www.espn.com/soccer/table/_/league/eng.1"))


    def self.teams
      @team_1 = self.new
      @team_1.name = "Manchester United"
      @team_1.position = "1"
      @team_1.points = "89"
      @team_1.goals_scored = "99"
      @team_1.goals_conceded = "2"
      @team_1.next_match = "Arsenal"
      @team_1.highest_scorer = "Alexis Sanchez"

      @team_2 = self.new
      @team_2.name = " "
    end

    def self.blah
      puts @team_1.name
    end




end
