class Player
  attr_accessor :name, :money, :cards, :points

  BALANCE = 100

  def initialize(name)
    @name = name
    @money = BALANCE
    @cards = []
    @points = 0
  end

  def calculate_points
    @points = @cards.sum(&:value)
    @cards.select(&:ace?).each do
      @points -= 10 if @points > 21
    end
    @points
  end

  def reset_data
    @cards = []
    @points = 0
  end

  def take_card(deck, count = 1)
    count.times do
      @cards << deck.give_card if @cards.size < 3
    end
    calculate_points
  end

  # def take_money; end
  # def give_money

  # end
end
