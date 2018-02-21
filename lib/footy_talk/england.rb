require 'pry'
require 'nokogiri'
require 'open-uri'


class FootyTalk::England

  attr_accessor :name


    def self.teams
      @team_1 = self.new
    end

    def self.standings
      doc = Nokogiri::HTML(open("http://www.espn.com/soccer/table/_/league/eng.1"))
      title = doc.search("h2.table-caption").text
      puts title
      puts "Current Standings: "
      puts "                   "
      table = doc.search("span.team-names")
      table.each do |team|
        puts team.text
      end
    end


  def self.top_scorers
    doc = Nokogiri::HTML(open("http://www.espnfc.us/english-premier-league/23/statistics/scorers?season=2017"))
    scorers = doc.search("div#stats-top-scorers tr")
    names = []
    scorers.each do |scorer|
      names << scorer.text.gsub(/^\s+/, " ")
    end
    puts names[1..5]
  end

  def self.top_assists
    doc = Nokogiri::HTML(open("http://www.espnfc.us/english-premier-league/23/statistics/assists?season=2017"))
    assisters = doc.search("div#stats-top-assists tr")
    names = []
    assisters.each do |assister|
      names << assister.text.gsub(/^\s+/, " ")
    end
    puts names[1..5]
  end

  def self.statistics
    input = nil
    while input != 'menu'
      puts <<-DOC.gsub /^\s*/, ''
      Pick from the Premier League's:
      1. Top Scorers
      2. Top Assists
      Type menu to go back.
      DOC
      input = gets.strip
      case input
      when "1"
        top_scorers
        puts "        "
      when "2"
        top_assists
        puts "        "
      when 'menu'
        puts <<-DOC.gsub /^\s*/, ''
        Welcome to Footy Talk, your quick access to all stats football.
          1. English Premier League: United Kingdom
          2. La Liga: Spain
          3. Serie A: Italy
          4. Bundesliga: Germany
          5. Ligue 1: France
        Choose the league you'd you need information on,
        type enter to exit, or type menu to go back.
        DOC
      end
    end
  end



end
