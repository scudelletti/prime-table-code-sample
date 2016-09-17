class PrimeTableGenerator
  def initialize(number_of_primes)
    @number_of_primes = number_of_primes
  end

  def generate
    TableGenerator.new(primes).generate
  end

  private

  attr_reader :number_of_primes

  def primes
    @primes ||= PrimeGenerator.generate(number_of_primes)
  end
end
