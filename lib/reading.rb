require_relative 'printer'
require_relative 'tarot'

class Reading
  attr_reader :amount, :printer_class, :printer

  def initialize(options = {})
    @amount        = options.fetch(:amount) { 3 }
    @printer_class = options.fetch(:printer_class) { Printer }
    @printer       = @printer_class.new({ card_count: @amount })
  end

  def display
    cards = draw_cards
    printer.print(cards)
  end

  def draw_cards
    deck.sample(amount)
  end

  def deck
    @deck ||= Tarot.build
  end
end

