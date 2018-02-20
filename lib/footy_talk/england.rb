require 'pry'
require 'nokogiri'
require 'open-uri'


class FootyTalk::England

  attr_accessor :name


    def self.teams
      @team_1 = self.new
    end

    def self.standings
      doc = Nokogiri::HTML(open("http://www.espnfc.us/english-premier-league/23/table"))
      puts "Welcome to the English Premier League"
      standings = doc.search("td.team")
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

  def self.top_assists
    doc = Nokogiri::HTML(open("http://www.espnfc.us/english-premier-league/23/statistics/assists?season=2017"))
    assisters = doc.search("div#stats-top-assists tr")
    names = []
    assisters.each do |assister|
      names << assister.text.gsub(/\s+/, " ")
    end
    puts names[1..5]
  end

  def self.statistics
    puts <<-DOC
    Pick from the Premier league's:
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
