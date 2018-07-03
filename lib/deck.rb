require "./lib/card.rb"

class Deck

  attr_accessor :cards

  def initialize(cards)
    @cards = cards
    @value_hash = {"Ace"   => 14,
                  "King"  => 13,
                  "Queen" => 12,
                  "Jack"  => 11,
                  "10"    => 10,
                  "9"     => 9,
                  "8"     => 8,
                  "7"     => 7,
                  "6"     => 6,
                  "5"     => 5,
                  "4"     => 4,
                  "3"     => 3,
                  "2"     => 2}
    @suit_hash = {"Spades"    => 0.4,
                  "Hearts"    => 0.3,
                  "Diamonds"  => 0.2,
                  "Clubs"     => 0.1}
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
