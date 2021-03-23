require './actions/action_black_jack'
require_relative 'name_card'
require_relative 'suit_card'
require_relative 'play_deck'
require_relative 'card'
require_relative 'black_jack'

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
end
