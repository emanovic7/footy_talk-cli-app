require 'pry'
require 'nokogiri'
require 'open-uri'
require 'pry'

class FootyTalk::AllTeams

  attr_accessor :name, :position, :points, :goals_conceded, :goals_scored, :highest_scorer, :next_match


    def teams
      team_1 = self.new
      team_1.name = "Manchester United"
      team_1.position = "1"
      team_1.points = "89"
      team_1.goals_scored = "99"
      team_1.goals_conceded = "2"
      team_1.next_match = "Arsenal"
      teamn_1.highest_scorer = "Alexis Sanchez"
    end




end
