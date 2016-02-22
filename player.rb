class Player
  attr_accessor :name
  attr_reader :first_name, :last_name
  def initialize
  	puts "What is the players's first name?"
  	@first_name = gets.strip
  	@name = "#{@first_name}"
  end
end