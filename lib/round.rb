require "./lib/guess.rb"

class Round

  attr_accessor :deck,
                :guesses,
                :number_correct

  attr_writer :current_card_index

  def initialize(deck)
    @deck = deck
    @guesses = []
    @current_card_index = 0
    @number_correct = 0
  end

  def current_card
    return deck.cards[@current_card_index]
  end

  def record_guess(hash)
    card = Card.new(hash[:value], hash[:suit])
    guess = Guess.new("#{card.value} of #{card.suit}", current_card)
    @guesses << guess
    @current_card_index += 1
    if guess.response == "#{guess.card.value} of #{guess.card.suit}"
      @number_correct += 1
    end
    guess
  end

  def count
    @guesses.length
  end

  def percent_correct
    return number_correct/@guesses.length.to_f * 100
  end
end
