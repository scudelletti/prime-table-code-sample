class RowGenerator
  def initialize(vector, number_position)
    @vector = vector
    @multiplier = vector[number_position]
  end

  def generate
    vector.map do |number|
      number * multiplier
    end
  end

  private

  attr_reader :vector, :multiplier
end
