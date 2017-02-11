class FixedArray

  attr_reader :a

  def initialize(size)
    @a = Array.new(size)
  end

  def get(index)
    raise OutofBoundsException if !inbounds?(index)
    return @a[index]
  end

  def set(index, element)
    raise OutofBoundsException if !inbounds?(index)
    @a[index] = element
  end

  def length
    @a.length
  end

  def inbounds?(index)
    index <= @a.length
  end

end

class OutofBoundsException < StandardError
end