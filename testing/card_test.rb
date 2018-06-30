require "minitest/autorun"
require "minitest/pride"
require "./lib/card.rb"

class CardTest < Minitest::Test
  def test_it_exists
    card = Card.new("Ace", "Hearts")
    assert_instance_of Card, card
  end

  def test_value
    card = Card.new("10", "Spades")
    assert_equal "10", card.value
  end

  def test_suit
    card = Card.new("8", "Clubs")
    assert_equal "Clubs", card.suit
  end

end
