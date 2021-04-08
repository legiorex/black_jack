class Game
  attr_accessor :deck, :user, :bank, :dealer, :end

  def initialize(user_name)
    @end = false
    @dealer = Dealer.new
    @user = User.new(user_name)
    @bank = 0
  end

  def new_game
    @deck = Deck.new
    @dealer.reset_data
    @user.reset_data

    @dealer.take_card(@deck, 2)
    @user.take_card(@deck, 2)

    bet
  end

  def winner
    if @user.points > 21 && @dealer.points > 21 || @user.points == @dealer.points
      nil
    elsif @user.points > 21
      @dealer
    elsif @dealer.points > 21
      @user
    else
      [@user, @dealer].max_by(&:points)
    end
  end

  def bet
    @user.money -= 10
    @dealer.money -= 10
    @bank = 20
  end


  def send_money(player)
    player.money += @bank
  end
end
