class QuickFind
  attr_accessor :data

  def initialize(count)
    @data = []

    (0..count).each do |i|
      @data[i] = i
    end
  end

end
