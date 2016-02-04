class QuickFind
  attr_accessor :data

  def initialize(count)
    @data = []

    (0..count).each do |i|
      @data[i] = i
    end
  end

  def union(a, b)
    # requires the entire array to be traversed - takes quadratic time!

    data.each do |i|
      if i == a
        data[i] = b
      end
    end
  end

  def find(a, b)
    # two array accesses - very fast

    data[a] == data[b]
  end

end
