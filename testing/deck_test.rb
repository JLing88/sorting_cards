require "minitest/autorun"
require "minitest/pride"
require "./lib/deck.rb"

class DeckTest < Minitest::Test

  def test_it_exists
    card_1 = Card.new("10", "Hearts")
    card_2 = Card.new("9", "Diamonds")
    card_3 = Card.new("8", "Spades")
    deck = Deck.new(card_1, card_2, card_3)
    assert_instance_of Deck, deck
  end

  def test_count
    card_1 = Card.new("10", "Hearts")
    card_2 = Card.new("9", "Diamonds")
    card_3 = Card.new("8", "Spades")
    deck = Deck.new(card_1, card_2, card_3)
    assert_equal 3, deck.count
  end


end
