class Deck
  attr_accessor :cards
  @@rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
  @@suit = ["Hearts", "Clubs", "Diamonds", "Spades"]
  def initialize
    @cards = []
    @@rank.each do |x|
        @@suit.each do |y|
          @cards << Card.new(y, x)
        end
    end
  end
  def choose_card
    card = self.cards.delete_at(rand(0..self.cards.length))
  end
end
class Card
  attr_reader :suit, :rank
  def initialize(suit, rank)
    @suit, @rank = suit, rank
  end
end
