class TableGenerator
  SIGN = "X".freeze

  def initialize(vector)
    @vector = vector
  end

  def generate
    vector.map.with_index do |item, index|
      RowGenerator.new(vector, index).generate.unshift(item)
    end.unshift(header_line)
  end

  private

  attr_reader :vector

  def header_line
    ["X", vector].flatten
  end
end
