require "spec_helper"

describe PrimeGenerator do
  describe "#generate" do
    subject { described_class.generate(number_of_primes) }

    context "when parameter is 3" do
      let(:number_of_primes) { 3 }

      it "returns first 3 prime numbers" do
        is_expected.to eq([2,3,5])
      end

      it "returns an array" do
        is_expected.to be_an(Array)
      end
    end

    context "when parameter is 10" do
      let(:number_of_primes) { 10 }

      it "returns first 10 prime numbers" do
        is_expected.to eq([2, 3, 5, 7, 11, 13, 17, 19, 23, 29])
      end

      it "returns an array" do
        is_expected.to be_an(Array)
      end
    end
  end
end
