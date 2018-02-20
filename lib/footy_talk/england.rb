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
        puts name.text.strip
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

  def self.top_scorers
    doc = Nokogiri::HTML(open("http://www.espnfc.us/english-premier-league/23/statistics/scorers?season=2017"))
    scorers = doc.search("div#stats-top-scorers tr")
    names = []
    scorers.each do |scorer|
      names << scorer.text.gsub(/\s+/, " ")
    end
    puts names[1..5]
  end

  def self.statistics
    puts <<-DOC
    Welcome to Footy Talk, your quick access to all stats football.
      1. Top Scorers
      2. Top Assists
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
