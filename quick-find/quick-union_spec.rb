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

  describe "#root" do
    it "gets the root of the node (i.e. keeps traversing the tree until data[i] == i)" do
      qu = QuickUnion.new(10)
      qu.union(9,4)
      qu.union(3,4)

      expect(qu.root(3)).to eq 4
    end
  end

  describe "#union" do
    it "finds the root of a and sets b to that value" do
      qu = QuickUnion.new(10)
      qu.union(2,9)

      expect(qu.data[2]).to eq 9
    end
  end
end
