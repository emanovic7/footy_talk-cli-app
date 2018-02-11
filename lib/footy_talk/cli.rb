class FootyTalk::CLI

  def intro
    greeting
    show_leagues
    leagues
    goodbye
  end

  def greeting
    puts "Welcome to Footy Talk, your quick access to all stats football."
    #puts "Pick a league below: "
  end

  def show_leagues
    puts <<-DOC
      1. English Premier League: United Kingdom
      2. La Liga: Spain
      3. Serie A: Italy
      4. Bundesliga: Germany
      5. Ligue 1: France
    DOC
  end

  def leagues
    puts "Choose the league you'd you need information on, or type enter to exit "
    input =  nil
    while input != "exit"
      input = gets.strip

      case input
      when "1"
        FootyTalk::AllLeagues.epl

      when '2'
        FootyTalk::AllLeagues.laLiga

      when '3'
        FootyTalk::AllLeagues.serieA

      when '4'
        FootyTalk::AllLeagues.bundesliga

      when '5'
        FootyTalk::AllLeagues.ligue1

      else
        puts "Invalid Entry, try again:"
    end
  end
end

  def goodbye
    puts "see you later"
  end

end
