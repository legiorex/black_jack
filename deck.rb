class Deck
  attr_accessor :cards

  def initialize
    @cards = []
    add_card_deck
  end

  def add_card_deck
    Card::SUITS.each do |suit|
      Card::NAME_CARD.each do |name|
        @cards << Card.new(name, suit)
      end
    end
  end

  def random_cards(count)
    result = @cards.sample(count)

    result.each do |card|
      @cards.delete(card)
    end
    result
  end
end
