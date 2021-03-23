class Card
  attr_accessor :card

  def initialize(name, suit)
    @card = {}
    @card = { name: name, suit: suit }
  end
end
