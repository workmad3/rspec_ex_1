class SortedBinaryTree
  def empty?
    @value.nil?
  end

  def add(item)
    @value = item
  end

  def contains?(item)
    @value == item
  end

  def get_node(value)
    self
  end

  def root
    self
  end
end
