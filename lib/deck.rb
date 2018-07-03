require "./lib/card.rb"

class Deck

  attr_accessor :cards

  def initialize(cards)
    @cards = cards
  end

  def count
    @count = @cards.length
  end

  # def sort
  # 
  #   if @cards.length <= 1
  #     return @cards
  #   end
  #   length = @cards.length
  #   swapped = false
  #   while swapped == false do
  #     length-1.times do |element|
  #       # if @cards[element].value > @cards[element+1].value
  #       #   @cards[element], @cards[element+1] = @cards[element+1], @cards[element]
  #       #   swapped = true
  #       # end
  #     end
  #   end
  #   return cards
  # end
end
