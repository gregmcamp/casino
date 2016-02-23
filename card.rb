class Card
 # Getter and Setter methods for rank, suit and color
 attr_accessor :rank, :suit, :color
 # Gets called when you call the new method to create an instance
 # card = Card.new('10', 'K', 'Black')
 def initialize(rank, suit, color)
   @rank = rank
   @suit = suit
   @color = color
 end

 def to_s
  case @rank
  when 1
    r = 'A'
  when 11
    r = 'J'
  when 12
    r = 'Q'
  when 13
    r = 'K'
  else 
    r = @rank
  end
  "#{suit} #{r}"
 end 

end