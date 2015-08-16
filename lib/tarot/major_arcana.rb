module Tarot

  class MajorArcana
    def build
      major_arcana = []
      card_names.each do |name|
        major_arcana << Card.new({ name: name, arcana: :major })
      end

      major_arcana
    end

    def card_names
      [
        "The Fool", "The Magician", "The High Priestess", "The Empress", "The Emperor", "The Hierophant", "The Lovers",
        "The Chariot", "Strength", "The Hermit", "Wheel of Fortune", "Justice", "The Hanged Man", "Death", "Temperance",
        "The Devil", "The Tower", "The Star", "The Moon", "The Sun", "Judgement", "The World"
      ].freeze
    end
  end

end

