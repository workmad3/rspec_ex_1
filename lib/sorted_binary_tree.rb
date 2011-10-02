class SortedBinaryTree
  def initialize
    @root = NilNode.new
  end

  def empty?
    @root.empty?
  end

  def add(item)
    @root = @root.add(item)
  end

  def remove(item)
    @root = @root.remove(item)
  end

  def count
    @root.count
  end

  def include?(item)
    @root.include?(item)
  end

  def to_a
    @root.to_a
  end

  class Node
    def initialize(item)
      @value = item
      @left_node = NilNode.new
      @right_node = NilNode.new
    end

    def empty?
      false
    end

    def remove(item)
      if item < @value
        @left_node.remove(item)
      elsif item > @value
        @right_node.remove(item)
      else
        @value = @right_node.instance_variable_get(:@value)
      end
      self
    end

    def add(item)
      if item < @value
        @left_node = @left_node.add(item)
      else
        @right_node = @right_node.add(item)
      end
      self
    end

    def count
      @left_node.count + @right_node.count + 1
    end

    def include?(item)
      @value == item || @left_node.include?(item) || @right_node.include?(item)
    end

    def to_a
      @left_node.to_a + [@value] + @right_node.to_a
    end
  end

  class NilNode
    def count
      0
    end

    def remove(item)
    end

    def empty?
      true
    end
    
    def add(item)
      Node.new(item)
    end

    def include?(item)
      false
    end

    def to_a
      []
    end
  end
end
