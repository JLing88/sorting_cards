class Card
  attr_accessor :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def get_card_value(value, suit)

    value_hash = {"Ace"   => 14,
                  "King"  => 13,
                  "Queen" => 12,
                  "Jack"  => 11,
                  "10"    => 10,
                  "9"     => 9,
                  "8"     => 8,
                  "7"     => 7,
                  "6"     => 6,
                  "5"     => 5,
                  "4"     => 4,
                  "3"     => 3,
                  "2"     => 2}
    suit_hash = {"Spades"    => 0.4,
                  "Hearts"    => 0.3,
                  "Diamonds"  => 0.2,
                  "Clubs"     => 0.1}

    card_value = value_hash[value] + suit_hash[suit]
  end

end
