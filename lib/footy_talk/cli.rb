class FootyTalk::CLI

  def intro
    greeting
    leagues
  end

  def greeting
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

  def leagues
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

      when 'menu'
        greeting

      when 'exit'
        goodbye

      else
        puts "Invalid Entry, try again:"
      end
    end
end

  def goodbye
    puts "Bye, see you later"
  end

end
