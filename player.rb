class Player
  attr_accessor :name, :bankroll
  def initialize(name, bankroll = 1000)
  	@name = name
  	@bankroll = bankroll
  end
end