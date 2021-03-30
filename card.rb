class Card
  attr_accessor :name, :suit

  SUITS = [{ suit_tile: 'Пики', icon_code: "\u2660" },
           { suit_tile: 'Черви', icon_code: "\u2665" },
           { suit_tile: 'Крести', icon_code: "\u2663" },
           { suit_tile: 'Бубен', icon_code: "\u2666" }]

  NAME_CARD = [(2..10).to_a, 'Валет', 'Дама', 'Король', 'Туз'].flatten.map(&:to_s)

  def initialize(name, suit)
    @name = name
    @suit = suit
  end

  def points; end
end
