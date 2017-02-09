class FixedArray

  def initialize(size)
    @a = Array.new(size)
  end

  def get(index)
    raise OutofBoundsException if index > @a.length
    return @a[index]
  end

  def set(index, element)
    @a[index] = element
  end

  def length
    @a.length
  end

end

class OutofBoundsException < StandardError
end