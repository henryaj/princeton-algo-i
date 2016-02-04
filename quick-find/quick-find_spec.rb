require_relative "./quick-find"

RSpec.describe QuickFind do
  describe "#new" do
    it "initialises an array with id equal to the array index" do
      qf = QuickFind.new(10)

      (0..9).each do |i|
        expect(qf.data[i]).to eq i
      end
    end
  end

  describe "#union" do
    it "connects two components" do
      qf = QuickFind.new(10)
      qf.union(2, 10)

      expect(qf.data[2]).to eq(10)
    end
  end

  describe "#find" do
    it "returns true if the elements are connected" do
      qf = QuickFind.new(10)
      qf.union(2, 10)

      expect(qf.find(2, 10)).to be true
    end
  end
end
