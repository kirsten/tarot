require './printer'

describe Printer do
  let(:cards) do
    [
      { name: 'The Tower' },
      { name: 'Three of Cups' },
      { name: 'The Hermit' }
    ]
  end

  subject(:printer) { Printer.new(cards) }

  describe '#initialize' do
    it 'accepts an array of cards to print' do
      printer = Printer.new(cards)
      expect(printer.cards).to eq cards
      expect(printer.cards.last[:name]).to eq 'The Hermit'
    end
  end

end

