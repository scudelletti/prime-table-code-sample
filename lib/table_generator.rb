class TableGenerator
  def initialize(vector)
    @vector = vector
  end

  def generate
    vector.size.times.map do |index|
      RowGenerator.new(vector, index).generate
    end
  end

  private

  attr_reader :vector
end
