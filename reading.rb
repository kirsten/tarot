require './printer'

class Reading
  attr_reader :amount, :printer_class

  def initialize(options = {})
    @amount        = options.fetch(:amount) { 3 }
    @printer_class = options.fetch(:printer_class) { Printer }
  end

  def display
    cards = draw_cards
    printer_class.print(cards)
  end

  def draw_cards
    deck.sample(amount)
  end

  def deck
    @deck ||= [
      { name: 'Page of Cups' },
      { name: 'Seven of Wands' },
      { name: 'The Fool' },
      { name: 'The Moon' },
      { name: 'Eight of Swords' },
      { name: 'Two of Wands' },
      { name: 'Five of Pentacles' },
      { name: 'The Hermit' },
      { name: 'Seven of Swords' },
      { name: 'Five of Wands' },
      { name: 'Three of Cups' },
      { name: 'The Lovers' },
      { name: 'The Tower' }
    ]
  end
end

