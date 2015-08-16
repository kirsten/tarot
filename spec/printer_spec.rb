require 'ostruct'
require './printer'

describe Printer do
  let(:cards) do
    [
      OpenStruct.new({ name: "The Tower" }),
      OpenStruct.new({ name: "Three of Cups" }),
      OpenStruct.new({ name: "The Hermit" })
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

