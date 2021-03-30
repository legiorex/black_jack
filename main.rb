require './actions/action_black_jack'
require './actions/action_user'
require './modules/welcome'
require_relative 'player'
require_relative 'deck'
require_relative 'card'
require_relative 'black_jack'
require_relative 'user'
require_relative 'dealer'

class Main
  include Welcome

  def initialize
    puts 'Давай сыграем!'
    self.class.welcome

    puts 'Представьтесь'
    user_name = gets.chomp

    @black_jack = BlackJack.new(user_name)

    @action_black_jack = ActionBlackJack.new(@black_jack)
  end

  # def send_cards
  #   @action_black_jack.deal_two_cards_user
  # end

  # def user_cards
  #   @action_black_jack.user_cards
  # end

  def control
    loop do
      puts 'start - начало игры'
      puts 'exit - выход из игры'

      choise = gets.chomp

      start_game if choise == 'start'

      break if choise == 'exit'
    end
  end

  def start_game
    @action_black_jack.deal_two_cards_user
    @action_black_jack.user_cards
  end
end

main = Main.new

main.control
