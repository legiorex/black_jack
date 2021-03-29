class ActionBlackJack
  def initialize(black_jack)
    @deck = black_jack.deck
    @user = black_jack.user
  end

  def deal_two_cards_user
    puts "before #{@deck.cards.size}"

    random_two_cards = @deck.random_cards(2)
    @user.cards = random_two_cards
    puts "after #{@deck.cards.size}"
  end

  def user_cards
    @user.print_cards
  end
end
