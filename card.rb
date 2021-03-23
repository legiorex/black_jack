class Card
  attr_accessor :card

  def initialize(name, suit, value)
    @card = {}
    @card = { name: name, suit: suit, value: value }
  end
end
