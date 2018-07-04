require "./lib/deck.rb"

class Guess

  attr_accessor :response,
                :card

  def initialize(response, card)
    @response = response
    @card = card
  end

  def correct?
    return response == "#{card.value} of #{card.suit}"
  end

  def feedback
    if correct?
      "Correct."
    else
      "Incorrect."
    end
  end

end
