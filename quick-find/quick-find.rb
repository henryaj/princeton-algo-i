class QuickFind
  attr_accessor :data

  def initialize(count)
    @data = []

    (0..count).each do |i|
      @data[i] = i
    end
  end

  def union(a, b)
    data.each do |i|
      if i == a
        data[i] = b
      end
    end
  end

end
