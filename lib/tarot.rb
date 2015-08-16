require_relative 'card'
require_relative 'tarot/major_arcana'
require_relative 'tarot/minor_arcana'

module Tarot

  def self.build
    Deck.new.build
  end

  class Deck

    def build
      major_arcana = Tarot::MajorArcana.new.build
      minor_arcana = Tarot::MinorArcana.new.build

      [ major_arcana, minor_arcana ].flatten
    end

  end
end

