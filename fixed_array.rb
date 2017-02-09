class FixedArray

  def initialize(size)
    @a = Array.new(size)
  end

  def get(index)
    return @a[index]
  end

  def set(index, element)
    @a[index] = element
  end

end
