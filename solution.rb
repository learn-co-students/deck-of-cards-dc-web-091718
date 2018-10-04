require "pry"
class Deck

  attr_accessor :cards

  def initialize
    @cards = []
    create_single_card = Hash.new
    suit = ["Hearts","Clubs","Diamonds","Spades"]
    rank = ["A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    suit.collect do |suit_name|
      rank.collect do |rank_name|
        @cards << Card.new(suit_name,rank_name)
      end
    end
  end

  def choose_card
    @cards.delete_at(rand(@cards.length))
  end
end

class Card
   attr_reader :rank,:suit

    def initialize(suit,rank)
      @rank = rank
      @suit = suit
    end
end
