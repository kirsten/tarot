class Printer
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def print
    cards.each { |card| puts card[:name] }
  end

end

