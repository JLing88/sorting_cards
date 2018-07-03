require "./lib/guess.rb"

class Round

  attr_accessor :deck, :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
    @current_card = 0
    @number_correct = 0
  end

  def current_card
    return deck.cards[@current_card]
  end

  def record_guess(hash)
    card = Card.new(hash[:value], hash[:suit])
    guess = Guess.new("#{card.value} of #{card.suit}", current_card)
    @guesses << guess
    @current_card += 1
    if guess.response == "#{guess.card.value} of #{guess.card.suit}"
      @number_correct += 1
    end
    guess
  end

  def count
    @guesses.length
  end

  def number_correct
    @number_correct
  end

  def get_card_value

  end

end
