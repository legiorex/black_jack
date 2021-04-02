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

      break if choise == 'exit'
    end
  end

  def start_game
    @action_black_jack.deal_cards_user(2)
    @action_black_jack.deal_cards_dealer(2)
    @action_black_jack.user_cards
    @action_black_jack.dealer_cards

    loop do
      puts '1 --- взять карту'
      puts '2 --- пропустить ход'
      puts '3 --- открыть карты'

      choise_move = gets.chomp.to_i

      case choise_move
      when 1
        @action_black_jack.deal_cards_user(1)
        @action_black_jack.user_cards

      when 2

      when 3

      else

        choise_move = 'exit'

      end

      break if choise_move == 'exit'
    end
  end
end

main = Main.new

main.control
