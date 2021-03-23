class PlayDeck
  attr_accessor :play_deck

  def initialize(card)
    @play_deck = []
    @play_deck << card
  end
end
