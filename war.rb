require_relative 'deck'
require_relative 'card'
require_relative 'deck'

class War

  attr_accessor :player_draw, :dealer_draw
  
  def initialize(player)
    @dealer_draw = dealer_draw
    @player_draw = player_draw
    @player = player
    puts "welcome to the War Room, prepare to lose your money!\n\n"
    @deck = Deck.new
    player_card
  end

  def player_card
    puts "\nPick a card, any card... (Press Enter)"
    gets.strip
    puts "Player drew..."
    @player_draw = @deck.deal
    puts "#{@player_draw}"
    computer_card
  end

  def computer_card
    puts "\nDealer drew..."
    @dealer_draw = @deck.deal
    puts "#{@dealer_draw}"
    outcome
  end

  def outcome
    if @player_draw.rank > @dealer_draw.rank
      puts "Congratulations, here is some cashola!"
      @player.bankroll += 20
    elsif @dealer_draw.rank > @player_draw.rank
      puts "Haha, I could take your money all day long!"
      @player.bankroll -= 20
    else @player_draw.rank = @dealer_draw.rank
      puts "It's a draw, pardner"
      @player.bankroll += 0
    end
    exit_to_main
  end 

  def exit_to_main
    puts "Would you care to play again? (y/n)"
    exit_response = gets.strip
    if exit_response == "y"
        player_card
    else
      puts "Have a nice day, come back when you have more money!"
    end
  end
end

=begin
class War

	attr_accessor :draw_card #:player

	def initialize
    #@player = player
    @deck = Deck.new
    game_start
  end  

  def self.welcome
    puts "\nWelcome to the War Room! Prepare to lose!\n\n"
  end

  def game_start
		welcome = gets.strip
		draw_card
	end

	def draw_card
    puts "Player drew card..."
		puts @deck.deal
  end



  def repeat
    play = War.new
    play.draw_card
    play.exit_war
  end

  def exit_war
    puts "Would you care to play again? (y/n)"
    exit_response = gets.strip
    if exit_response == "y"
        repeat
    else
      puts "Have a nice day, come back when you have more money!"
    end
  end
end

War.welcome
play = War.new
play.draw_card
play.exit_war
=end
