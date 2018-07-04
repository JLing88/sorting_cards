require "./lib/card.rb"

class Deck

  attr_accessor :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    @count = @cards.length
  end

  def sort

    length = @cards.length
    swapped = true

    while swapped do
      swapped = false
      (length-1).times do |element|
        if @cards[element].get_card_value > @cards[element+1].get_card_value
          @cards[element], @cards[element+1] = @cards[element+1], @cards[element]
          swapped = true
        end
      end
    end
    
    return cards
  end
end
