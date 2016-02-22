class Slot_machine

	def initialize(player)
		@player = player
		puts "\nWelcome to the slot machine biotch!\n\n"
		puts "yank my crank!!!\n\n"
		puts "press the enter/return to continue"
		welcome_response = gets.strip
		slots
	end	


	def slots
		slot_arr = %w[emoji 2 orange 4 5 barbar 7 bar cherry]
		result_1 = slot_arr.sample
		result_2 = slot_arr.sample
		result_3 = slot_arr.sample

		puts "#{result_1}, #{result_2}, #{result_3}"

		if result_1 == result_2 && result_1 == result_3
			puts "Congrats you hit the jackpot mother effer!!!\n\n"
			@player.bankroll += 100
		elsif result_1 == result_2
			puts "Nice, you won a little somptin somptin\n\n"
			@player.bankroll += 20
		elsif result_1 == result_3
			puts "Good for you dummy!\n\n"
			@player.bankroll += 20
		elsif result_2 == result_3
			puts "Hooray for you, you won some money!\n\n"
			@player.bankroll += 20
		else 
			puts "Wow, you really suck at this!\n\n"
			@player.bankroll -= 15
		end
			exit_to_main
	end	

	def exit_to_main
		puts "Current wallet total: $#{@player.bankroll}"
		puts "Would you like to \exit to main menu? (y/keep yankin')\n\n"
		exit_response = gets.strip.downcase
		if exit_response == "y"
			puts "Adios, thanks for the money!!!"
		else
			slots
		end
	end

end