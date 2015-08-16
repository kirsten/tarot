class Card
  attr_reader :name, :arcana

  def initialize(attributes = {})
    @name   = attributes.fetch(:name)
    @arcana = attributes.fetch(:arcana)
  end
end

