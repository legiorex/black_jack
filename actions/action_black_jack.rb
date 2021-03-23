class ActionBlackJack
  def initialize(black_jack)
    @play_deck = black_jack.play_deck

    add_card_deck
  end

  def add_card_deck
    suits = [{ suit_tile: 'Пики', icon_code: '/U2660' },
             { suit_tile: 'Черви', icon_code: '/U2665' },
             { suit_tile: 'Крести', icon_code: '/U2663' },
             { suit_tile: 'Бубен', icon_code: '/U2666' }]

    names_card = [(2..10).to_a, 'Валет', 'Дама', 'Король', 'Туз'].flatten.map(&:to_s)

    suits.each do |suit|
      names_card.each do |name|
        @play_deck << Card.new(name, suit)
      end
    end
  end
end
