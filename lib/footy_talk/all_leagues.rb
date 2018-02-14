require 'pry'
require 'nokogiri'
require 'open-uri'
require_relative "./england"
require_relative "./france"
require_relative "./germany"
require_relative "./italy"
require_relative "./spain"



class FootyTalk::AllLeagues
  attr_accessor :team, :position

  def self.epl
    @teams = FootyTalk::England.teams
    puts FootyTalk::England.blah
  end

  def self.laLiga
    puts "This is La Liga:"
    puts "Current Standings:"
    puts "Select from Options"
  end

  def self.serieA
    puts "This is serieA:"
    puts "Current Standings:"
    puts "Select from Options"
  end

  def self.bundesliga
    puts "This is bundesliga:"
    puts "Current Standings:"
    puts "Select from Options"
  end

  def self.ligue1
    puts "This is ligue1:"
    puts "Current Standings:"
    puts "Select from Options"
  end


end
