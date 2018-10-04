class Deck
attr_accessor :cards

def initialize
  @cards = []
  @ranks = ['A', *(2..10), 'J', 'Q', 'K']
  @suit = ["Hearts", "Clubs", "Diamonds", "Spades"]

  @ranks.each do |rank|
    @suits.each do |suit|
      @cards << Card.new(rank, suit)
    end
  end
  @cards
end
  #@ranks = [2, 3, 4, 5] (1st loop)
  # @suits = [C, H, S, D] (2nd loop)
  # @cards = [2C]

  def choose_card
    card = @cards.sample
    @cards.delete(card)
  end
end

class Card

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end




end
