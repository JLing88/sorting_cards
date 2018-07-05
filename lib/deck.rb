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

    length = count
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

  def merge_sort(cards)

    if cards.length <= 1
      return cards
    elsif
      midpoint = (cards.length/2).floor
      left_deck = merge_sort(cards[0..midpoint-1])
      right_deck = merge_sort(cards[midpoint..cards.length])
      merge(left_deck, right_deck)
    end

  end


    def merge(left_deck, right_deck)

      if left_deck.length == 0
        return right_deck
      elsif right_deck.length == 0
        return left_deck
      elsif left_deck[0].get_card_value < right_deck[0].get_card_value
        [left_deck[0]] + merge(left_deck[1..left_deck.length], right_deck)
      else
        [right_deck[0]] + merge(left_deck, right_deck[1..right_deck.length])
      end

    end
end
