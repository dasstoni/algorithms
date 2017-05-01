class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    self.rank = rank
    self.suit = suit
  end

  def output_card
    puts "#{self.rank} of #{self.suit}"
  end

end

class Deck
  def initialize
    @deck = []
    @rank = [:A, 2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K]
    @suit = [:Spades, :Hearts, :Clubs, :Diamonds]

    @rank.each do |rank|
      @suit.each do |suit|
        @deck << Card.new(rank, suit)
      end
    end
  end

  def output
    @deck.each do |card|
      card.output_card
    end
  end

  def shuffle
    @deck.shuffle!
  end

  def deal
    @deck.shift
  end

end

deck = Deck.new
deck.shuffle
card = deck.deal
card.output_card
puts "Deck"

deck.output
