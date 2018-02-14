require 'pry'
require 'nokogiri'
require 'open-uri'
require_relative "./england"
require_relative "./france"
require_relative "./germany"
require_relative "./italy"
require_relative "./spain"



class FootyTalk::AllLeagues
  #attr_accessor :team, :position

  def self.epl
    @teams = FootyTalk::England.teams
    puts FootyTalk::England.standings
  end

  def self.laLiga
    @teams = FootyTalk::Spain.teams
    puts FootyTalk::Spain.standings
  end

  def self.serieA
    @teams = FootyTalk::Italy.teams
    puts FootyTalk::Italy.standings
  end

  def self.bundesliga
    @teams = FootyTalk::Germany.teams
    puts FootyTalk::Germany.standings
  end

  def self.ligue1
    @teams = FootyTalk::France.teams
    puts FootyTalk::France.standings
  end


end
