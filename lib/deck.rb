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

    swapped = true

    #loop until swapped is false
    while swapped do
      #initailly set swapped to false, becomes true if any values are swapped
      swapped = false
      #only need to iterate count-1 because for n numbers, there are n-1 comparisons
      (count-1).times do |element|
        #if left card is greater than right card, swap them and set swapped to true
        if @cards[element].get_card_value > @cards[element+1].get_card_value
          #slick ruby way to prevent having to write a swap method
          @cards[element], @cards[element+1] = @cards[element+1], @cards[element]
          swapped = true
        end
      end
    end
    return cards
  end

  def merge_sort(cards)
    #if there's 1 or fewer elements, there's nothing to sort, also is the stop case for recursion
    if cards.length <= 1
      return cards
    elsif
      #find the middle element of the array so we have the index to split them
      midpoint = (cards.length/2).floor
      #split array in half, and call merge_sort on them both again
      #until we are left with 1 element per array
      left_deck = merge_sort(cards[0..midpoint-1])
      right_deck = merge_sort(cards[midpoint..cards.length])
      #puts the sorted arrays back together
      merge(left_deck, right_deck)
    end

  end


    def merge(left_deck, right_deck)
      #if either array argument is empty, return the other array, nothing to merge
      if left_deck.length == 0
        return right_deck
      elsif right_deck.length == 0
        return left_deck
      #if the value of the left_deck[0] is less than right_deck[0], first
      #left_deck[0] then concatenated into a single array with with return value
      #of another recursive call to the remainder of the left_deck array and the right_deck
      elsif left_deck[0].get_card_value < right_deck[0].get_card_value
        [left_deck[0]] + merge(left_deck[1..left_deck.length], right_deck)
      else
        #same as above, but reversed
        [right_deck[0]] + merge(left_deck, right_deck[1..right_deck.length])
      end

    end
end
