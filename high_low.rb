

<<<<<<< HEAD

class HighLow
	def initialize(player)
		@player = player
		main_menu
=======
	def initialize(player)
		main_menu(player)
>>>>>>> b783ac24eb9fe098afe08f8b19e7ab2d06827eaf
	end

	def main_menu(player)
		player_number = 0
		puts "The Number of The Beast"
		player_bet = get_player_bet
		player_number = get_player_number
<<<<<<< HEAD
		@player.bankroll = determine_winnings(player_number, player_bet)
		exit_menu
=======
		player.bankroll = determine_winnings(player_number, player_bet, player)
		exit_menu(player)
>>>>>>> b783ac24eb9fe098afe08f8b19e7ab2d06827eaf
	end

	def get_player_bet
		player_bet = 0
		puts "Wallet total: $#{@player.bankroll}"
		puts "How much will you bet?"
		player_bet = gets.to_i
		if player_bet > @player.bankroll
			puts "You don't have that much money!"
		elsif player_bet == 0
			main_menu(player)
		end
		player_bet
	end

	def get_player_number
		puts "Choose a number from 1 - 1,000:"
		player_number = gets.to_i
		if player_number > 0 && player_number <= 1000
			puts "Oh...very clever."
			player_number
		else
			puts "That was not a number!"
			get_player_number
		end
	end

	def determine_winnings(player_number, player_bet, player)
		puts "The Beast is choosing..."
		beast_number = rand(1..1000)
		winning_number = rand(1..1000)
		puts "The winning number is: #{winning_number}"
		puts "Your number is: #{player_number}"
		puts "The Beast number is: #{beast_number}"
		if player_number <= winning_number
			if player_number == winning_number
				puts "Jackpot!"
				@player.bankroll += (10*player_bet)
			elsif beast_number > winning_number
				puts "You chose wisely!"
				@player.bankroll += (2*player_bet)
			elsif beast_number == winning_number
				puts "The Beast omnipotent triumphs!"
				@player.bankroll -= player_bet
			elsif player_number > beast_number
				puts "You chose wisely!"
				@player.bankroll += (2*player_bet)
			elsif beast_number >= player_number
				puts "You chose poorly!"
				@player.bankroll -= player_bet
			end
		else
			puts "You chose poorly!"
			@player.bankroll -= player_bet
		end
		puts "Wallet total: $#{@player.bankroll}"
		@player.bankroll
	end

	def exit_menu(player)
		puts "Would you like to callenge The Beast again?[y/n]"
		option = gets.strip.downcase
		case option
		when "y"
			main_menu(player)
		when "n"
			puts "Goodbye"
		else
			exit_menu(player)
		end
	end
end



