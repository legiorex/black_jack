class BlackJack
  attr_accessor :deck, :user, :bank, :dealer


  def initialize(user_name)
    @deck = Deck.new
    @dealer = Dealer.new
    @user = User.new(user_name)
    @bank = 0
  end
end
