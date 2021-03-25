class User < Player
  attr_reader :name

  def initialize(name)
    @name = name
    super()
  end

  def print_cards
    p cards
    cards.each do |item|
      # puts "card #{item}"
      # puts "card !!!  #{item.card}"
      card = item.card
      # puts "#{card[:name]} #{card[:suit][:suit_tile]} #{send(puts, card[:suit][:icon_code].to_s)}"
    end
  end
end
