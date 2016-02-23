require_relative 'card'

class Deck
 # Getter and Setter methods for rank, suit and color
 attr_accessor :cards

 # Gets called when you call the new method to create an instance
 # deck = Deck.new
 def initialize
   @ranks = %w(1 2 3 4 5 6 7 8 9 10 11 12 13)
   @suits = %w(Spades Diamonds Clubs Hearts)
   @cards = []
   generate_deck
   @cards.shuffle
 end
 
 def generate_deck
   @suits.each do |suit|
     @ranks.size.times do |i|
       # Ternary Operator
       color = (i % 2 == 0) ? 'Black' : 'Red' 
       @cards << Card.new(@ranks[i].to_i, suit, color)
     end
   end
 end

 def deal
  @cards.shuffle.pop
 end
end