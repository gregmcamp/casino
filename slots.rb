class Slot_machine
	attr_accessor :player

	def initialize
		puts "\nWelcome to the slot machine biotch!\n\n"
		puts "yank my crank!!!\n\n"
		puts "press the enter/return to continue"
		welcome_response = gets.strip
		slots
	end	


	def slots(player)
		slot_arr = %w[1 3 5 7 9]
		result_1 = slot_arr.sample
		result_2 = slot_arr.sample
		result_3 = slot_arr.sample

		puts "#{result_1}, #{result_2}, #{result_3}"

		if result_1 == result_2 && result_1 == result_3
			puts "Congrats you hit the jackpot mother effer!!!\n\n"
			player.bankroll += 100
		elsif result_1 == result_2
			puts "Nice, you won a little somptin somptin\n\n"
			player.bankroll += 20
		elsif result_1 == result_3
			puts "Good for you dummy!\n\n"
			player.bankroll += 20
		elsif result_2 == result_3
			puts "Hooray for you, you won some money!\n\n"
			player.bankroll += 20
		else 
			puts "Wow, you really suck at this #{@name}!\n\n"
			player.bankroll -= 10
		end
			exit_to_main
	end	

	def exit_to_main
		puts "Would you like to play again or exit to main menu? (y/n)\n\n"
		exit_response = gets.strip.downcase
		if exit_response == "y"
			puts "Tug on my shaft again!\n\n"
			slots
		else
			puts "Adios, thanks for the money!!!\n\n"
			Casino.menu
		end
	end

end