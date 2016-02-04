require_relative "./quick-union"

RSpec.describe QuickUnion do
  describe "#initialize" do
    it "creates an array of elements whose index is equal to their value" do
      qu = QuickUnion.new(10)

      (0..9).each do |i|
        expect(qu.data[i]).to eq i
      end
    end
  end
end
