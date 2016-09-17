class MatrixPrinter
  def initialize(vector)
    @vector = vector
  end

  def draw
    vector.each do |row|
      puts row.join(" ")
    end
  end

  attr_reader :vector
end
