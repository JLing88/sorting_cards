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

  def test_get_card_value
    card_1 = Card.new("10", "Hearts")
    card_2 = Card.new("Ace", "Hearts")
    assert_equal 10.3, card_1.get_card_value
    assert_equal 14.3, card_1.get_card_value
  end

end
