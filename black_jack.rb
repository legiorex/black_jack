class BlackJack
  attr_accessor :deck, :user, :bank

  def initialize(user_name)
    @deck = Deck.new
    @user = User.new(user_name)
    @bank = 0
  end
end
