require './actions/action_black_jack'
require_relative 'name_card'
require_relative 'suit_card'
require_relative 'play_deck'
require_relative 'card'
require_relative 'black_jack'
require_relative 'user'
require_relative 'dealer'
require_relative 'player'

class Main
  def initialize
    puts 'Давай сыграем!'
    black_jack = BlackJack.new
    @action_play_deck = ActionBlackJack.new(black_jack)
    black_jack.play_deck.each do |card|
      puts card.card
    end
    puts black_jack.play_deck.size
  end

  def start
    puts 'Представьтесь'
    user_name = gets.chomp

    @user = User.new(user_name)

    # loop do
    # end
  end
end
