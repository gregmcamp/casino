require_relative 'player'
require_relative 'slots'
require_relative 'high_low'

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
  	puts "3) QUIT"
    menu_select = gets.to_i
    case menu_select
    when 1
      game = High_low.new(@player)
      game.play
    when 2
      game = Slots_machine.new(@player)
      game.slots_play
    when 3
      exit(0)
    else
      puts "Bad llama. Retry.\n\n"
      menu
    end
  end
end

casino = Casino.new
casino.menu