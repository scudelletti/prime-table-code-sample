class PrimeGenerator
  STARTER_NUMBER = 2

  def self.generate(number_of_primes)
    new(number_of_primes).generate
  end

  def generate
    while !prime_bucket_full?
      prime_bucket << current_number if prime?
      next_number
    end

    prime_bucket
  end

  private

  attr_accessor :number_of_primes, :prime_bucket, :current_number

  private_class_method :new

  def initialize(number_of_primes)
    @number_of_primes = number_of_primes
    @prime_bucket  = []
    @current_number = 2
  end

  def prime?
    (STARTER_NUMBER...current_number).none? do |number|
      current_number % number == 0
    end
  end

  def next_number
    self.current_number = current_number.next
  end

  def prime_bucket_full?
    prime_bucket.size >= number_of_primes
  end
end
