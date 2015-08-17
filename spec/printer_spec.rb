require 'ostruct'
require './lib/printer'

describe Printer do
  let(:cards) do
    [
      OpenStruct.new({ name: "The Tower" }),
      OpenStruct.new({ name: "Three of Cups" }),
      OpenStruct.new({ name: "The Hermit" })
    ]
  end

  subject(:printer) { Printer.new }

  describe '#initialize' do
    context 'when no card count is provided' do
      it 'provides a default card count of 3' do
        expect(printer.card_count).to eq 3
      end
    end

    context 'when a card count is provided' do
      it 'accepts the card count' do
        printer = Printer.new({ card_count: 5 })
        expect(printer.card_count).to eq 5
      end
    end
  end

  describe '#print' do
    it 'prints each card' do
      expect(printer).to receive(:horizontal_borders).twice
      expect(printer).to receive(:vertical_borders).exactly(24).times
      expect(printer).to receive(:row_with_card_names).once
      printer.print(cards)
    end
  end

end

