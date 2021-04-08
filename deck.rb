class Deck
  attr_accessor :cards

  def initialize
    @cards = []
    generate_cards
  end

  def generate_cards
    Card::SUITS.each do |suit|
      Card::RANKS.each do |rank|
        @cards << Card.new(suit, rank)
      end
    end
    @cards.shuffle!
  end

  def give_card
    @cards.pop
  end
end
