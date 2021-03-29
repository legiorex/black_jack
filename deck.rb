class Deck
  attr_accessor :cards

  def initialize
    @cards = []
    add_card_deck
  end

  def add_card_deck
    suits = [{ suit_tile: 'Пики', icon_code: "\u2660" },
             { suit_tile: 'Черви', icon_code: "\u2665" },
             { suit_tile: 'Крести', icon_code: "\u2663" },
             { suit_tile: 'Бубен', icon_code: "\u2666" }]

    names_card = [(2..10).to_a, 'Валет', 'Дама', 'Король', 'Туз'].flatten.map(&:to_s)

    suits.each do |suit|
      names_card.each do |name|
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
