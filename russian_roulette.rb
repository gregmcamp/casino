class Russian
  def initialize(player)
    @player = player
    main_menu
  end

  def main_menu
    puts "Welcome to RUSSIAN roulette"
    puts "With great risk comes great reward!"
    puts "Spin the chamber?[any to continue/no]"
    option = gets.strip
    if option == "no"
      puts "Congratulations. You're not insane!"
      @player.bankroll += 120
    else
      outcome
      puts "Spin again[any to continue/no]?"
      again == gets.strip
      if again == no
        puts "Get outta here!"
      else
        outcome
      end
    end
  end

  def outcome
    survive = 1 + rand(6)
    if survive == 1
      puts "BANG"
      exit(0)
    else
      puts "click..."
      puts "You crazy mother fucker"
      @player.bankroll += 1000
      puts "Wallet total: $#{@player.bankroll}"
    end
end