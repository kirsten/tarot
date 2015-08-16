require './lib/card'

describe Card do
  let(:attributes) { { name: 'The Tower', arcana: :major } }

  subject(:card)   { Card.new(attributes) }

  describe '#initialize' do
    context 'with the required attributes' do
      it 'sets a name' do
        expect(card.name).to eq 'The Tower'
      end

      it 'sets an arcana type' do
        expect(card.arcana).to eq :major
      end
    end

    context 'without a name attribute' do
      it 'complains with a KeyError' do
        attributes.delete(:name)
        expect{ Card.new(attributes) }.to raise_exception KeyError
      end
    end

    context 'without an arcana attribute' do
      it 'complains with a KeyError' do
        attributes.delete(:arcana)
        expect{ Card.new(attributes) }.to raise_exception KeyError
      end
    end
  end

end

