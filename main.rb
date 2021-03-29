require './actions/action_black_jack'
require './actions/action_user'
require './modules/welcome'
# require_relative 'name_card'
# require_relative 'suit_card'
require_relative 'player'
require_relative 'play_deck'
require_relative 'card'
require_relative 'black_jack'
require_relative 'user'
require_relative 'dealer'

class Main
  include Welcome

  def initialize
    puts 'Давай сыграем!'
    self.class.welcome

    @black_jack = BlackJack.new

    puts 'Представьтесь'
    user_name = gets.chomp

    @user = User.new(user_name)

    @action_black_jack = ActionBlackJack.new(@black_jack, @user)

    @black_jack.play_deck.each do |card|
      print card.card[:suit][:icon_code]
    end
    # puts @black_jack.play_deck.size
  end

  def start
    # puts 'Представьтесь'
    # user_name = gets.chomp

    # user = User.new(user_name)

    # @action_black_jack = ActionBlackJack.new(@black_jack, user)

    # loop do
    # end
  end

  def send_cards
    puts 'test'
    puts @action_black_jack.deal_two_cards_user
  end

  def user_cards
    @user.print_cards
  end
end
