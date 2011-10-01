class Sorter
  attr_reader :value, :less_than, :greater_or_equal

  def add(value)
    if (@value == nil)
      @value = value
    elsif  (value < @value)
      @less_than = Sorter.new
      @less_than.add(value)
    end
  end
end