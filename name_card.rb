class NameCard
  attr_reader :names_card

  def initialize
    @names_card = [2..10, 'Валет', 'Дама', 'Король', 'Туз'].to_s
  end
end
