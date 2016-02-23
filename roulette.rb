class Roulette
	attr_accessor :bet, :winning_number, :player_pick, :odd_even_pick
	def initialize(player)
		@player = player
		@bet = bet
		@winning_number = winning_number
		@player_pick = player_pick
		@odd_even_pick = odd_even_pick
		main_menu
	end

	def main_menu
		puts "Monte Carlo Roulette Table\n"
    puts "1) Pick a number [1-38]"
		puts "2) Odd or Even"
		menu_option = gets.to_i
		while menu_option != 1 && menu_option != 2 do
			main_menu
		end
		@bet = get_bet
		winning_array = [*1..38]
		@winning_number = winning_array.sample
		if menu_option == 1
			pick_a_number
			determine_winnings_pick
		else
			odd_even
			determine_winnings_odd_even
		end
		puts "Wallet total: #{@player.bankroll}"
		puts "Play again?[any character to play/no]"
		option = gets.strip
		if option == "no"
			"Goodbye!"
		else
			main_menu
		end
	end

	def get_bet
		player_bet = 0
		puts "Wallet total: $#{@player.bankroll}"
		puts "How much will you bet?"
		player_bet = gets.to_i
		if player_bet > @player.bankroll
			puts "You don't have that much money!"
		elsif player_bet == 0
			get_bet
		end
		player_bet
	end

	def pick_a_number
		puts "Pick a number [1-38]"
		@player_pick = gets.to_i
		if @player_pick >= 1 && @player_pick <= 38
			puts "The roulette spins!"
		else
			pick_a_number
		end
	end

	def odd_even
		puts "What'll it be?\n 1) Odd\n 2) Even"
		@odd_even_pick = gets.to_i
		if @odd_even_pick == 1 || @odd_even_pick == 2
			puts "The roulette spins!"
		else
			odd_even
		end
	end

	def determine_winnings_pick
		puts "Your number: #{player_pick}"
		puts "Winning number: #{@winning_number}"
		if @player_pick == @winning_number
			@player.bankroll += (35*@bet)
			"Winner!"
		else
			"Loooooser!"
			@player.bankroll -= @bet
		end
	end
	def determine_winnings_odd_even
		puts "Winning number: #{@winning_number}"
		if @odd_even_pick == 1
			if @winning_number % 2 == 0
				puts "Loooooser!"
				@player.bankroll -= @bet
			else
				puts "Winner!"
				@player.bankroll += (2*@bet)
			end
		else
			if @winning_number % 2 == 0
				puts "Winner!"
				@player.bankroll += (2*@bet)
			else
				puts "Loooooser!"
				@player.bankroll -= @bet
			end
		end
	end
end