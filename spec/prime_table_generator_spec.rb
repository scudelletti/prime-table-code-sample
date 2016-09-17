require "spec_helper"

describe PrimeTableGenerator do
  let(:prime_table_generator) { described_class.new(number_of_primes) }
  let(:number_of_primes) { 3 }

  describe "generate" do
    subject { prime_table_generator.generate }

    it "returns matrix with all multiplied primes" do
      is_expected.to eq([
        ["X",2,3,5],
        [2,4,6,10],
        [3,6,9,15],
        [5,10,15,25],
      ])
    end
  end
end
