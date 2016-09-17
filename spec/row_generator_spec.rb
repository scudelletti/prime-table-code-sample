require "spec_helper"

describe RowGenerator do
  let(:row_generator) { described_class.new(vector, number_position) }
  let(:vector) { [1,2,3,4,5] }
  let(:number_position) { 1 }

  describe "#generate" do
    subject { row_generator.generate }

    context "when generating row 0" do
      let(:number_position) { 0 }

      it "multiplies all elements by the number in the number position" do
        is_expected.to eq([1,2,3,4,5])
      end
    end

    context "when generating row 1" do
      let(:number_position) { 1 }

      it "multiplies all elements by the number in the number position" do
        is_expected.to eq([2,4,6,8,10])
      end
    end

    context "when generating row 4" do
      let(:number_position) { 4 }

      it "multiplies all elements by the number in the number position" do
        is_expected.to eq([5,10,15,20,25])
      end
    end
  end
end
