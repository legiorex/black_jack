class ActionBlackJack
  def initialize(black_jack, user)
    @play_deck = black_jack.play_deck
    @user = user
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
        @play_deck << Card.new(name, suit)
      end
    end
  end

  def deal_two_cards_user
    puts 'deal_two_cards_user'
    # p @play_deck.sample(2)
    random_two_cards = @play_deck.sample(2)
    p random_two_cards
    p @user
    @user.cards.concat(random_two_cards)

    random_two_cards.each do |card|
      @play_deck.delete(card)
    end
  end
end
