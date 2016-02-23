class Roulette
	attr_accessor
	def initialize(player)
		@player = player
		main_menu
	end

	def main_menu
		if @player.bankroll == 0
			puts "No more $$$"
			exit(0)
		end
		puts "Monte Carlo Roulette Table\n"
    puts "1) Pick a number [1-38]"
		puts "2) Odd or Even"
		puts "3) Quit"
		menu_option = gets.to_i
		case menu_option
		when 1
			bet = get_bet
			winning_number = get_winning_number
			player_pick = pick_a_number
			determine_winnings_pick(bet, winning_number, player_pick)
			exit_menu
		when 2
			bet = get_bet
			winning_number = get_winning_number
			odd_even_pick = odd_even
			determine_winnings_odd_even(bet, winning_number, odd_even_pick)
			exit_menu
		when 3
			puts "Goodbye"
		else
			main_menu
		end
	end

	def get_bet
		puts "Wallet total: $#{@player.bankroll}"
		puts "How much will you bet?"
		bet = gets.to_i
		if bet > @player.bankroll
			puts "You don't have that much money!"
			get_bet
		elsif bet == 0
			puts "You have to bet more than zero"
			get_bet
		end
		bet
	end

	def get_winning_number
		1 + rand(38)
	end

	def exit_menu
		puts "Wallet total: #{@player.bankroll}"
		puts "Play again?[any character to play/no]"
		option = gets.strip
		if option == "no"
			puts "Goodbye!"
		else
			main_menu
		end
	end

	def pick_a_number
		puts "Pick a number [1-38]"
		player_pick = gets.to_i
		if player_pick >= 1 && player_pick <= 38
			puts "The roulette spins!"
			player_pick
		else
			pick_a_number
		end
	end

	def odd_even
		puts "What'll it be?\n 1) Odd\n 2) Even"
		odd_even_pick = gets.to_i
		if odd_even_pick == 1
			puts "The roulette spins!"
			odd_even_pick
		elsif odd_even_pick ==2
			puts "The roulette spins!"
		else
			odd_even
		end
	end

	def determine_winnings_pick(bet, winning_number, player_pick)
		puts "Your number: #{player_pick}"
		puts "Winning number: #{winning_number}"
		if player_pick == winning_number
			@player.bankroll = @player.bankroll + 2 * bet
			"Winner!"
		else
			"Loooooser!"
			@player.bankroll = @player.bankroll - bet
		end
	end

	def determine_winnings_odd_even(bet, winning_number, odd_even_pick)
		puts "Winning number: #{winning_number}"
		if odd_even_pick == 1
			if winning_number % 2 == 0
				puts "Loooooser!"
				@player.bankroll = @player.bankroll - bet
			else
				puts "Winner!"
				@player.bankroll = @player.bankroll + 2 * bet
			end
		else
			if winning_number % 2 == 0
				puts "Winner!"
				@player.bankroll = @player.bankroll + 2 * bet
			else
				puts "Loooooser!"
				@player.bankroll = @player.bankroll - bet
			end
		end
	end
end