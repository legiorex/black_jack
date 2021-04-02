class ActionBlackJack
  attr_reader :end_game, :user

  def initialize(black_jack)
    @deck = black_jack.deck
    @user = black_jack.user
    @dealer = black_jack.dealer
    @black_jack = black_jack
    @move_dealer = false
    @end_game = false
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

  def dealer_cards(show)
    @dealer.print_cards(show)
  end

  def bet
    @user.money -= 10
    @dealer.money -= 10
    @black_jack.bank = 20
  end

  def actions_dealer
    @move_dealer = true
    deal_cards_dealer(1) if @dealer.points < 17

    if @dealer.points > 17 && @user.cards.length == 3
      show_cards
    elsif @dealer.points > 17
      actions_user
    end
  end

  def actions_user
    loop do
      puts '1 --- пропустить ход' unless @move_dealer
      puts '2 --- открыть карты'
      puts '3 --- взять карту' if @user.cards.length < 3

      choise_move = gets.chomp.to_i

      case choise_move
      when 1

        actions_dealer

      when 2
        show_cards
      when 3
        deal_cards_user(1)
        user_cards
        actions_dealer
      end

      break if @end_game
    end
  end

  def show_cards
    dealer_cards(true)
    user_cards
    check_vin
  end

  def check_vin
    if @user.points == 21 || 21 > @user.points && @user.points > @dealer.points
      @user.money += @black_jack.bank
      puts 'Вы выйграли!'
      puts "Ваши деньги #{@user.money}"

    else
      puts 'Вы проиграли!'
      puts "Ваши деньги #{@user.money}"

    end
    @end_game = true
  end

  def reset_game
    @end_game = false
    @move_dealer = false
    @user.reset_data
    @dealer.reset_data
    @deck.add_card_deck
  end
end
