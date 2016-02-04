class QuickUnion
  attr_accessor :data

  def initialize(count)
    @data = []

    (0..count).each do |i|
      data[i] = i
    end
  end

  def root(i)
    return i if i == data[i]
    i = data[i]
    root(i)
  end

  def union(a, b)
    i = root(a)
    j = root(b)
    data[i] = j
  end

end
