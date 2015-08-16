require './printer'

describe Printer do
  let(:cards) do
    [
      { name: 'The Tower' },
      { name: 'Three of Cups' },
      { name: 'The Hermit' }
    ]
  end

  subject(:printer) { Printer }

  describe '.print' do
    it 'prints the names of each card' do
      expect(STDOUT).to receive(:puts).with('The Tower')
      expect(STDOUT).to receive(:puts).with('Three of Cups')
      expect(STDOUT).to receive(:puts).with('The Hermit')
      printer.print(cards)
    end
  end

end

