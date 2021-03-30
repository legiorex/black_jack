class ActionBlackJack
  def initialize(black_jack)
    @deck = black_jack.deck
    @user = black_jack.user
    @black_jack = black_jack
  end

  def deal_two_cards_user
    random_two_cards = @deck.random_cards(2)
    @user.cards = @user.cards | random_two_cards
  end

  def user_cards
    @user.print_cards
  end

  def bet
    @user.money -= 10
    @black_jack += 10
  end
end
