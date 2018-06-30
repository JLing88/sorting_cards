require "minitest/autorun"
require "minitest/pride"
require "./lib/guess.rb"


class GuessTest < Minitest::Test

  def test_it_exists
    card = Card.new("Ace", "Spades")
    guess = Guess.new("10 of Hearts", card)
    assert_instance_of Guess, guess
  end

  def test_response
    card = Card.new("Jack", "Diamonds")
    guess = Guess.new("Queen of Clubs", card)
    assert_equal "Queen of Clubs", guess.response
  end

  def test_correct?
    card_1 = Card.new("Jack", "Diamonds")
    guess_1 = Guess.new("Queen of Clubs", card_1)
    refute false, guess_1.correct?(guess_1.response, card_1)
    guess_2 = Guess.new("Jack of Diamonds", card_1)
    assert true, guess_2.correct?(guess_2.response, card_1)
  end
end
