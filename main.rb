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

  def control
    puts 'start - начало игры'
    puts 'exit - выход из игры'

    loop do
      choise = gets.chomp
      start_game if choise == 'start'
      final_menu if @action_black_jack.end_game
      break if choise == 'exit'
    end
  end

  def start_game
    @action_black_jack.reset_game
    @action_black_jack.bet
    @action_black_jack.deal_cards_user(2)
    @action_black_jack.deal_cards_dealer(2)
    @action_black_jack.user_cards
    @action_black_jack.dealer_cards(false)

    @action_black_jack.actions_user
  end

  def final_menu
    puts 'start - играть снова' if @action_black_jack.user.money > 10
    puts 'exit - выход из игры'

    loop do
      choise = gets.chomp
      start_game if choise == 'start' && @action_black_jack.user.money > 10

      break if choise == 'exit'
    end
  end
end

main = Main.new

main.control
