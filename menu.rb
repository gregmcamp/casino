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
      HighLow.new(@player)
    when 2
      Slot_machine.new(@player)
    when 3
      exit(0)
    else
      puts "Bad llama. Retry.\n\n"
      menu
    end
    menu
  end
end

casino = Casino.new
casino.menu