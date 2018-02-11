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
        puts "This is the English Premier League:"
        puts "Current Standings:"
        puts "Select from Options"

      when '2'
        puts "This is La Liga:"
        puts "Current Standings:"
        puts "Select from Options"

      when '3'
        puts "This is Sirie A:"
        puts "Current Standings:"
        puts "Select from Options"

      when '4'
        puts "This is Bundesliga:"
        puts "Current Standings:"
        puts "Select from Options"

      when '5'
        puts "This is Ligue 1:"
        puts "Current Standings:"
        puts "Select from Options"
      else
        puts "Invalid Entry, try again:"
    end
  end
end

  def goodbye
    puts "see you later"
  end

end
