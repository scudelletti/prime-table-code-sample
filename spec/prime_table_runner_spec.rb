require "spec_helper"

describe PrimeTableRunner do
  context "when paremeter is 5" do
    let(:parameter) { 5 }

    it "prints prime multiplier table to stdout" do
      expect{ described_class.run(parameter) }.to output(
       <<~OUTPUT
         X 2 3 5 7 11
         2 4 6 10 14 22
         3 6 9 15 21 33
         5 10 15 25 35 55
         7 14 21 35 49 77
         11 22 33 55 77 121
       OUTPUT
      ).to_stdout
    end
  end
end
