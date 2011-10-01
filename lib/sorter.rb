class Sorter
  attr_reader :value, :less_than, :greater_or_equal_than

  def add(value)
    if (@value == nil)
      @value = value
    elsif  (value < @value)
      @less_than = Sorter.new
      @less_than.add(value)
    elsif
      @greater_or_equal_than = Sorter.new
      @greater_or_equal_than.add(value)
    end
  end
end