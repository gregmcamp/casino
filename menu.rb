

class Casino
  attr_accessor :players

  def initialize
  	@players = []
  	puts "Welcome to the casino!"
  	puts "How many players do you want in the casino?"
  	number_players = gets.to_i
  	number_players.times do
  	  @players << Player.new
  	end
  	puts "#{number_players} added successfully"
  end

  def menu
  	puts "CASINO MENU:"
  	puts "1) HighLo"
  	puts "2) Casino War"
  	puts "3) QUIT"
    menu_select = gets.to_i
    case menu_select
    when 1
      @

  end
end

casino = Casino.new
casino.menu