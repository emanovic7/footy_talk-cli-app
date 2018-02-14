require 'pry'
require 'nokogiri'
require 'open-uri'
require 'pry'
require_relative './footy_talk/all_teams'



class FootyTalk::AllLeagues
  attr_accessor :team, :position
  def self.epl
    doc = Nokogiri::HTML(open("http://www.espn.com/soccer/table/_/league/eng.1"))

    title = doc.search("section#main-container.page-container span.long-caption").text
    puts title
    puts "Current Standings: "
    position = doc.search("section#main-container.page-container span.number").text
    categories = doc.search("section#main-container.page-container span.team-names")[0].text
    puts "#{position[0]} - #{categories}."

    puts "Select from Options"
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
