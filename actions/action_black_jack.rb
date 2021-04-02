class ActionBlackJack
  def initialize(black_jack)
    @deck = black_jack.deck
    @user = black_jack.user
    @dealer = black_jack.dealer
    @black_jack = black_jack
  end

  def deal_cards_user(count)
    @user.cards = @user.cards | @deck.random_cards(count)
  end

  def deal_cards_dealer(count)
    @dealer.cards = @dealer.cards | @deck.random_cards(count)
  end

  def user_cards
    @user.print_cards
  end

  def dealer_cards
    @dealer.print_cards
  end

  def bet
    @user.money -= 10
    @black_jack += 10
  end
end
