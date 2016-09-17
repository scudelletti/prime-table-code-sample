require_relative "prime_generator"
require_relative "row_generator"
require_relative "table_generator"
require_relative "matrix_printer"
require_relative "prime_table_generator"
require_relative "prime_table_runner"

class PrimeTableRunner
  def self.run(number_of_primes)
    new(number_of_primes).run
  end

  def run
    printer.draw
  end

  private

  private_class_method :new

  def initialize(number_of_primes)
    @number_of_primes = number_of_primes
  end

  attr_reader :number_of_primes

  def printer
    MatrixPrinter.new(primes)
  end

  def primes
    PrimeTableGenerator.new(number_of_primes).generate
  end
end
