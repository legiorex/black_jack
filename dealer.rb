class Dealer < Player
  def initialize
    super()
  end

  def print_cards(show)
    puts "******* Карты диллера ******* \n \n"
    count_points

    if show

      cards.each do |card|
        puts "#{card.name} #{card.suit[:suit_tile]} #{card.suit[:icon_code]}"
      end

      puts "очки дилера #{points} \n \n"
    else

      puts '*' * cards.length

    end
  end

  def actions
    puts "points #{points}"
  end
end
