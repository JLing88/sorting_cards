require "minitest/autorun"
require "minitest/pride"
require "./lib/round.rb"

class RoundTest < Minitest::Test

  def test_it_exists
    card_1 = Card.new("10", "Hearts")
    card_2 = Card.new("9", "Diamonds")
    card_3 = Card.new("8", "Spades")
    deck = Deck.new([card_1, card_2, card_3])
    guess = Guess.new("Ace of Spades", deck)
    round = Round.new(deck)
    assert_instance_of Round, round
  end

  def test_deck
    card_1 = Card.new("3", "Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)
    assert_equal deck, round.deck
  end

  def test_current_card
    card_1 = Card.new("3", "Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)
    assert_equal card_1, round.current_card
  end

  def test_record_guess
    card_1 = Card.new("3", "Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    assert_equal 1, round.guesses.length
    assert_equal card_2, round.current_card
  end

  def test_count
    card_1 = Card.new("3", "Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    assert_equal 1, round.guesses.count
  end

  def test_number_correct
    card_1 = Card.new("3", "Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    assert_equal 1, round.number_correct
    round.record_guess({value: "4", suit: "Clubs"})
    assert_equal 2, round.number_correct
  end

  def test_percent_correct
    card_1 = Card.new("3", "Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    round.record_guess({value: "3", suit: "Hearts"})
    assert_equal 1, round.number_correct
    round.record_guess({value: "4", suit: "Clubs"})
    assert_equal 50, round.number_correct

  end
end
