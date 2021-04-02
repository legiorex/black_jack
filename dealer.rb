class Dealer < Player
  def initialize
    super()
  end

  def print_cards
    puts "******* Карты диллера ******* \n \n"
    cards.each do |card|
      puts "#{card.name} #{card.suit[:suit_tile]} #{card.suit[:icon_code]}"
    end
  end
end
