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


class Player
  attr_accessor :name
  attr_reader :first_name, :last_name
  def initialize
  	puts "What is the players's first name?"
  	@first_name = gets.strip
  	@name = "#{@first_name}"
  end
end

casino = Casino.new
casino.menu