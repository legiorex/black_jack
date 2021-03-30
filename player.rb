class Player
  attr_accessor :money, :cards
  attr_reader :points

  NAME_CARD = %w[Валет Дама Король Туз]

  BLACK_JACK = 21

  def initialize
    @money = 100
    @cards = []
    @points = 0
    @cards << Card.new('Туз', { suit_tile: 'Бубен', icon_code: "\u2666" })
  end

  def count_points
    aces = cards.find_all { |card| card.name.include?('Туз') }

    clear_cards = cards - aces unless aces.empty?

    points_clear_cards = 0

    clear_cards.each do |card|
      points_clear_cards += card.name.to_i || 10
    end
    puts points_clear_cards

    aces.each do
      if points_clear_cards >= BLACK_JACK || points_clear_cards + 11 > BLACK_JACK
        points_clear_cards += 1

      elsif points_clear_cards + 11 <= BLACK_JACK
        points_clear_cards += 11
      end
    end

    @points = points_clear_cards
  end
end
