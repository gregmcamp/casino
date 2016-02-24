class Russian
  def initialize(player)
    @player = player
    puts "Welcome to RUSSIAN roulette"
    puts "With great risk comes great reward!"
    main_menu
  end

  def main_menu
    puts "Spin the chamber?[any to continue/no]"
    option = gets.strip
    if option == "no"
      puts "Dasvidaniya Comrade"
    else
      outcome
    end
  end

  def outcome
    survive = 1 + rand(6)
    if survive == 1
      puts "BANG! You're dead."
      exit(0)
    else
      puts "click..."
      puts "Lucky day"
      @player.bankroll += 1000
      puts "Wallet total: $#{@player.bankroll}"
      main_menu
    end
  end
end