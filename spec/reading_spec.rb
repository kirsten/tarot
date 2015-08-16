require './reading'

class FakePrinter
  def initialize(*); end

  def print(*); end
end

describe Reading do

  let(:deck) do
    [
      { name: 'The Star' },
      { name: 'The Fool' },
      { name: 'Five of Wands' },
      { name: 'Seven of Swords' },
      { name: 'Page of Cups' },
      { name: 'The High Priestess' }
    ]
  end

  subject(:reading) { Reading.new({ printer_class: FakePrinter }) }

  describe '#initialize' do
    it 'accepts a printer class' do
      expect(reading.printer_class).to eq FakePrinter
    end

    it 'defaults to 1 card if no amount is provided' do
      expect(reading.amount).to eq 3
    end

    it 'accepts a number for the amount of cards' do
      reading = Reading.new({ amount: 1 })
      expect(reading.amount).to eq 1
    end
  end

  describe '#display' do
    it 'sends drawn cards off to the printer' do
      cards = double(:cards)
      allow(reading).to receive(:draw_cards).and_return(cards)
      expect(reading.printer).to receive(:print).with(cards)
      reading.display
    end
  end

  describe '#draw_cards' do
    before(:each) { allow(reading).to receive(:deck).and_return(deck) }

    it 'selects cards at random' do
      expect(reading.deck).to receive(:sample).with(3)
      reading.draw_cards
    end

    it 'selects the correct amount of cards' do
      expect(reading.draw_cards.size).to eq reading.amount
    end
  end
end

