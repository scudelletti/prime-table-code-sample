require "spec_helper"

describe TableGenerator do
  let(:table_generator) { described_class.new(vector) }
  let(:vector) { [1,2,3] }

  describe "#generate" do
    subject { table_generator.generate }

    it "returns matrix with multiplied values and headers" do
      is_expected.to eq([
        ["X",1,2,3],
        [1,1,2,3],
        [2,2,4,6],
        [3,3,6,9]
      ])
    end

    describe "matrix size" do
      context "rows size" do
        subject { super().size }

        it "has the same amount of items as the vector plus header" do
          is_expected.to eq(vector.size + 1)
        end
      end

      context "columns size" do
        subject { super().first.size }

        it "has the same amount of columns as the vector plus header" do
          is_expected.to eq(4)
        end
      end
    end
  end
end
