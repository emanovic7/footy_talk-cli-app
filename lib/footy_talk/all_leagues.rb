require 'pry'
require 'nokogiri'
require 'open-uri'
require_relative "./england"
require_relative "./france"
require_relative "./germany"
require_relative "./italy"
require_relative "./spain"



class FootyTalk::AllLeagues

  def self.epl
    @teams = FootyTalk::England.teams
    puts FootyTalk::England.standings
    puts "                  "
    puts FootyTalk::England.statistics
  end

  def self.laLiga
    @teams = FootyTalk::Spain.teams
    puts FootyTalk::Spain.standings
    puts "                  "
    puts FootyTalk::Spain.statistics
  end

  def self.serieA
    @teams = FootyTalk::Italy.teams
    puts FootyTalk::Italy.standings
    puts "                  "
    puts FootyTalk::Italy.statistics
  end

  def self.bundesliga
    @teams = FootyTalk::Germany.teams
    puts FootyTalk::Germany.standings
    puts "                  "
    puts FootyTalk::Germany.statistics
  end

  def self.ligue1
    @teams = FootyTalk::France.teams
    puts FootyTalk::France.standings
    puts "                  "
    puts FootyTalk::France.statistics
  end


end
