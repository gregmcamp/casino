require_relative 'player'
require_relative 'slots'
require_relative 'high_low'
require_relative 'roulette'
require_relative 'russian'

class Casino
  attr_accessor :player

  def initialize
    puts "Welcome to the casino!"
    puts "Enter Player Name"
    name = gets.strip
    @player = Player.new(name)
  end

  def menu
    puts "CASINO MENU:"
    puts "1) High-Low"
    puts "2) Slots"
    puts "3) Roulette"
    puts "4) War"
    puts "5) QUIT"
    menu_select = gets.to_i
    random_events
    case menu_select
    when 1
      HighLow.new(@player)
    when 2
      Slot_machine.new(@player)
    when 3
      enter_russian = 1 + rand(3)
      if enter_russian == 1
        Russian.new(@player)
      else
        Roulette.new(@player)
      end
    when 4
      War.new(@player)
    when 5
      puts "Sayonara, sucker!"
      exit(0)
    else
      puts "Bad llama. Retry.\n\n"
      menu
    end
    menu
  end

  def random_events
    cthulhu_speaks = 1 + rand(8)
    if cthulhu_speaks == 1
      puts "A wild pidgey has appeared!"
      puts "He steals half of your money and flys away."
      @player.bankroll = @player.bankroll / 2
      puts "Wallet total $#{@player.bankroll}"
    elsif cthulhu_speaks == 2
      puts "There has been an awakening."
      puts "Have you felt it?"
      option = gets.strip.downcase
      if option == "yes"
        puts "The Force, it's calling to you. Just let it in."
        @player.bankroll += 444
        puts "Wallet total: $#{@player.bankroll}"
      else
        puts "IT'S A TRAP!"
        @player.bankroll -= 100
        puts "Wallet total: $#{@player.bankroll}"
      end
    else
      puts "Transferring to game room..."
    end
  end
end

casino = Casino.new
casino.menu