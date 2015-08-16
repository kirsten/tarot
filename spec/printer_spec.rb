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

  describe '#print' do
    it 'prints the names of each card' do
      expect(STDOUT).to receive(:puts).with('The Tower')
      expect(STDOUT).to receive(:puts).with('Three of Cups')
      expect(STDOUT).to receive(:puts).with('The Hermit')
      printer.print
    end
  end

end

