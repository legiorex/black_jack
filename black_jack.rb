class BlackJack
  attr_accessor :deck, :user

  def initialize(user_name)
    @deck = Deck.new
    @user = User.new(user_name)

  end

end
