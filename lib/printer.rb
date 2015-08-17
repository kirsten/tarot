class Printer
  attr_reader :card_count

  def initialize(options = {})
    @card_count = options.fetch(:card_count) { 3 }
  end

  def print(cards)
    horizontal_borders
    12.times { vertical_borders }
    row_with_card_names(cards)
    12.times { vertical_borders }
    horizontal_borders
  end

  def row_with_card_names(cards)
    row = []
    cards.each do |card|
      borders = "||"
      inner_width = card_width - borders.length
      centered_card_name = card.name.center(inner_width, " ")
      card_inner = borders.insert(1, centered_card_name)
      row << card_inner
    end
    puts row.join('  ')
  end

  def horizontal_borders
    borders = []
    border = '-' * card_width
    card_count.times { borders << border }
    puts borders.join('  ')
  end

  def vertical_borders
    borders = []
    border = "||"
    inner_width = card_width - border.length
    border = border.insert(1, (" " * inner_width))
    card_count.times { borders << border }
    puts borders.join('  ')
  end

  def card_width
    50
  end

end

