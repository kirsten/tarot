module Tarot

  class MinorArcana
    def build
      minor_arcana = []

      suits.each do |suit|
        ranks.each do |rank|
          name = "#{rank} of #{suit}"
          minor_arcana << Card.new({ name: name, arcana: :minor })
        end
      end

      minor_arcana
    end

    def suits
      %w(Wands Pentacles Cups Swords)
    end

    def ranks
      %w(Ace Two Three Four Five Six Seven Eight Nine Ten Page Knight Queen King)
    end
  end

end

