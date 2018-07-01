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
    card = Card.new("Jack", "Diamonds")
    guess_1 = Guess.new("Queen of Clubs", card)
    refute false, guess_1.correct?
    guess_2 = Guess.new("Jack of Diamonds", card)
    assert true, guess_2.correct?
  end

  def test_feedback
    card = Card.new("Jack", "Diamonds")
    guess_1 = Guess.new("Queen of Clubs", card)
    assert_equal "Incorrect.", guess_1.feedback
    guess_2 = Guess.new("Jack of Diamonds", card)
    assert_equal "Correct.", guess_2.feedback
  end
end
