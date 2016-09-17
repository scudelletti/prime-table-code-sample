class PrimeGenerator
  STARTER_NUMBER = 2

  def self.generate(number_of_primes)
    new(number_of_primes).generate
  end

  private_class_method :new

  def initialize(number_of_primes)
    @number_of_primes = number_of_primes
    @accumulator = []
    @current_number = 2
  end

  def generate
    while accumulator.size != number_of_primes
      accumulator << current_number if prime?
      next_number
    end

    accumulator
  end

  private

  attr_accessor :number_of_primes, :accumulator, :current_number

  def prime?
    (STARTER_NUMBER...current_number).none? do |n|
      current_number % n == 0
    end
  end

  def next_number
    self.current_number = current_number.next
  end
end
