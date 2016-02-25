class Keno

  def initialize(player)
    @player = player
    puts "Welcome to Keno!"
    puts "Bet is 100 dollars"
    if @player.bankroll < 100
      puts "You only have $#{@player.bankroll} dollars"
    else
      main_menu
    end
  end

  def main_menu
    puts "Pick 15 numbers[1-100]:"
    player_choices = []
    15.times do 
      i = gets.to_i
      player_choices << i
    end
    @player.bankroll -= 100
    computer_arr = [*1..100]
    computer_choices = []
    20.times do
      computer_choices << computer_arr.shuffle.pop
    end
    comparearr = player_choices & computer_choices
    puts "You have #{comparearr.count} matches"
    if comparearr.count == 0
      puts "No Luck!"
    elsif comparearr.count == 1
      puts "One match. You won $10"
      @player.bankroll += 10
    elsif comparearr.count > 1
      puts "A few matches. You won $44"
      @player.bankroll += 44
    elsif comparearr.count > 4
      puts "Quite a few matches. You wom $100"
      @player.bankroll += 100
    elsif comparearr.count > 7
      puts "Good Job! You won $250"
      @player.bankroll += 250
    elsif comparearr.count > 10
      puts "Wow. You won 1,000"
      @player.bankroll += 1000
    elsif comparearr.count > 12
      puts "Almost all matches! You won $2,500"
      @player.bankroll += 2500
    elsif comparearr.count == 15
      puts "YOU WON $10,000"
      @player.bankroll += 10000
    end
    exit_menu
  end

  def exit_menu
    puts "You now have $#{@player.bankroll}"
    puts "would you like to play again?[any to play/no to quit]"
    option = gets.strip
    if option == "no"
      puts "Goodbye!"
    else
      if @player.bankroll < 100
        put "Sorry you don't have enough money"
      else
        main_menu
      end
    end
  end

end