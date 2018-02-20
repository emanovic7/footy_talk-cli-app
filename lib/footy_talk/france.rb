require 'pry'
require 'nokogiri'
require 'open-uri'


class FootyTalk::France

  attr_accessor :name

  @doc = Nokogiri::HTML(open("http://www.espn.com/soccer/standings/_/league/fra.1"))

  def self.teams
    @team_1 = self.new
  end
  def self.standings
    puts "Welcome to Ligue 1"
    puts @doc.search("section#main-container h1").text
    standings = @doc.search("section#main-container span.team-names")
    standings.each do |name|
      puts name.text
    end
  end

  def self.top_scorers
    doc = Nokogiri::HTML(open("http://www.espnfc.us/french-ligue-1/9/statistics/scorers"))
    scorers = doc.search("div#stats-top-scorers tr")
    names = []
    scorers.each do |scorer|
      names << scorer.text.gsub(/\s+/, " ")
    end
    puts names[1..5]
  end

  def self.top_assists
    doc = Nokogiri::HTML(open("http://www.espnfc.us/french-ligue-1/9/statistics/assists"))
    assisters = doc.search("div#stats-top-assists tr")
    names = []
    assisters.each do |assister|
      names << assister.text.gsub(/\s+/, " ")
    end
    puts names[1..5]
  end





  def self.statistics
    puts <<-DOC
    Pick from the French league's:
      1. Top Scorers
      2. Top Assists
    Type menu to go back.
    DOC

    input = nil
    while input != "menu"
      input = gets.strip
      case input
      when "1"
        top_scorers
      when "2"
        top_assists
      when "menu"
        puts <<-DOC
        Welcome to Footy Talk, your quick access to all stats football.
          1. English Premier League: United Kingdom
          2. La Liga: Spain
          3. Serie A: Italy
          4. Bundesliga: Germany
          5. Ligue 1: France
        DOC
      end
    end
  end





end
