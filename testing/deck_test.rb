require "minitest/autorun"
require "minitest/pride"
require "./lib/deck.rb"

class DeckTest < Minitest::Test

  def test_it_exists
    card_1 = Card.new("10", "Hearts")
    card_2 = Card.new("9", "Diamonds")
    card_3 = Card.new("8", "Spades")
    deck = Deck.new([card_1, card_2, card_3])
    assert_instance_of Deck, deck
  end

  def test_count
    card_1 = Card.new("10", "Hearts")
    card_2 = Card.new("9", "Diamonds")
    card_3 = Card.new("8", "Spades")
    deck = Deck.new([card_1, card_2, card_3])
    assert_equal 3, deck.count
  end

  def test_cards
    card_1 = Card.new("10", "Hearts")
    card_2 = Card.new("9", "Diamonds")
    card_3 = Card.new("8", "Spades")
    deck = Deck.new([card_1, card_2, card_3])
    assert_equal [card_1, card_2, card_3], deck.cards
  end

  def test_sort
    card_1 = Card.new("4", "Hearts")
    card_2 = Card.new("Jack", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    card_4 = Card.new("Ace", "Spades")
    card_5 = Card.new("Ace", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3, card_4, card_5])
    deck.sort
    assert_equal ([card_1, card_3, card_2, card_5, card_4]), deck.cards
  end

  def test_merge_sort
    card_1 = Card.new("4", "Hearts")
    card_2 = Card.new("Jack", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    card_4 = Card.new("Ace", "Spades")
    card_5 = Card.new("Ace", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3, card_4, card_5])

    assert_equal ([card_1, card_3, card_2, card_5, card_4]), deck.merge_sort(deck.cards)
  end

  def test_merge
    card_1 = Card.new("4", "Hearts")
    card_2 = Card.new("Jack", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    card_4 = Card.new("Ace", "Spades")
    card_5 = Card.new("Ace", "Diamonds")
    deck = Deck.new([card_1, card_3, card_5, card_2, card_4])
    left_deck = deck.cards[0..2]
    right_deck = deck.cards[3..4]
    assert_equal ([card_1, card_3, card_2, card_5, card_4]), deck.merge(left_deck, right_deck)
  end
end
