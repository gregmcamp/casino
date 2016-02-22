class Slots

	attr_accessor :player

	def initialize(player)
		@player = player
	end

	def welcome
		puts "\nWelcome to the slot machine #{@player.name}. You have #{@player.bankroll}!\n\n"
		puts "yank my crank!!!\n\n"
		puts "press the enter/return to continue"
		welcome_response = gets.strip
		slots_play
	end	
	
	
	def slots_play
	slot_arr = %w[1 3 5 7 9]
	result_1 = slot_arr.sample
	
	result_2 = slot_arr.sample
	
	result_3 = slot_arr.sample
	
	puts "#{result_1}, #{result_2}, #{result_3}"
	
		if result_1 == result_2 && result_1 == result_3
			puts "Congrats you hit the jackpot mother effer!!!\n\n"
		elsif result_1 == result_2
			puts "Nice, you won a little somptin somptin\n\n"
		elsif result_1 == result_3
			puts "Good for you dummy!\n\n"
		elsif result_2 == result_3
			puts "Hooray for you, you won some money!\n\n"
		else 
			puts "Wow, you really suck at this!\n\n"
		end
		exit_to_main
	end	
	
	def exit_to_main
		puts "Would you like to play again or exit to main menu? (y/n)\n\n"
		exit_response = gets.strip.downcase
		if exit_response == "y"
			puts "Tug on my shaft again!\n\n"
			slots_play
		else
			puts "Adios, thanks for the money!!!\n\n"
			exit(0)
		end
	end

end












