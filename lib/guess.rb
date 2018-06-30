require "./lib/card.rb"

class Guess

  attr_accessor :response, :card

  def initialize(response, card)
    @response = response
    @card = card
  end

  def correct?(response, card)
    #split response into array
    guess_array = response.split
    #compare array[0] to card.value
    #compare array[2] to card.suit
    if guess_array[0] == card.value && guess_array[2] == card.suit
      return true
    else
      return false
    end
  end

  def feedback(guess, card)
    if correct?(guess.response, card)
      "Correct."
    else
      "Incorrect."
    end
  end

end
