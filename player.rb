class Player
  attr_accessor :money, :cards, :points

  # attr_reader :points

  NAME_CARD = %w[Валет Дама Король Туз]

  BLACK_JACK = 21

  def initialize
    @money = 100
    @cards = []
    @points = 0
    # @cards << Card.new('Туз', { suit_tile: 'Бубен', icon_code: "\u2666" })
    # @cards << Card.new('9', { suit_tile: 'Бубен', icon_code: "\u2666" })
  end

  def count_points
    @points = 0

    aces = cards.find_all { |card| card.name.include?('Туз') }

    if aces.empty?

      cards.each do |card|
        @points += card.name.to_i.zero? ? 10 : card.name.to_i
      end
    else

      clear_cards = cards - aces

      points_clear_cards = 0

      clear_cards.each do |card|
        points_clear_cards += card.name.to_i.zero? ? 10 : card.name.to_i
      end

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
end
