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

end
