class Dealer < Player
  def initialize
    super('Dealer')
  end

  def turn(deck)
    take_card(deck) if points < 17 && cards.length < 3
  end
end
