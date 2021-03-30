class User < Player
  attr_reader :name

  def initialize(name)
    @name = name
    super()
  end

  def print_cards
    puts "#{@name} ваши карты"
    cards.each do |card|
      puts "#{card.name} #{card.suit[:suit_tile]} #{card.suit[:icon_code]}"
    end
    puts "ваши очки #{count_points}"
  end

  # def points
  #   cards.each do |card|
  #     puts "#{card.name} #{card.suit[:suit_tile]} #{card.suit[:icon_code]}"
  #   end
  # end
end
