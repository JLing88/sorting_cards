require "./lib/card.rb"

class Deck

  attr_accessor :cards

  def initialize(card_1, card_2, card_3)
    @cards = [card_1, card_2, card_3]
  end

  def count
    @count = @cards.length
  end

end
