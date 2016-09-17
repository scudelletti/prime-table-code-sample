require "spec_helper"

describe MatrixPrinter do
  let(:matrix_printer) { described_class.new(vector) }
  let(:vector) do
    [
      ["a", "a", "a"],
      ["b", "b", "b"],
      ["c", "c", "c"],
    ]
  end

  describe "#draw" do
    it "prints vector" do
      expect{ matrix_printer.draw }.to output("a a a\nb b b\nc c c\n").to_stdout
    end
  end
end
