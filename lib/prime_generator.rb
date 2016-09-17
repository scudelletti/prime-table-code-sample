class PrimeGenerator
  def self.generate(number_of_primes)
    accumulator = []
    number = 1.next

    while accumulator.size != number_of_primes
      if (2...number).none? { |n| number % n == 0 }
        accumulator << number
      end

      number = number.next
    end

    accumulator
  end
end
