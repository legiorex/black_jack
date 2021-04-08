class Card
  attr_reader :suit, :rank, :value

  SUITS = %w[♦ ♥ ♠ ♣]
  RANKS = [(2..10).to_a, 'J', 'Q', 'K', 'A'].flatten.map(&:to_s)

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
    @value = calculate_value(rank)
  end

  def calculate_value(rank)
    if rank == 'A'
      11
    elsif %w[J Q K].include?(rank)
      10
    else
      rank.to_i
    end
  end

  def face
    "#{@suit}#{@rank}"
  end

  def ace?
    rank == 'A'
  end
end
