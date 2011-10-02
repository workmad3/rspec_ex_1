class Sorter
  attr_reader :value, :less_than, :greater_or_equal_than

  def add(val)
    if (@value == nil)
      @value = val
    elsif  (val < @value)
      add_lt(val)
    else
      add_ge(val)
    end
  end

  def sort()
    sortit([])
  end

  protected

  def sortit(sorted_arr)
    sorted_arr = number_lt_value.sortit(sorted_arr) if number_lt_value
    sorted_arr << @value
    sorted_arr = number_ge_value.sortit(sorted_arr) if number_ge_value
    sorted_arr
  end

  private

  def add_lt(val)
    setup_for_lt_value unless number_lt_value
    number_lt_value.add(val)
  end

  def add_ge(val)
    setup_for_ge_value unless number_ge_value
    number_ge_value.add(val)
  end

  def number_lt_value
    @less_than
  end

  def number_ge_value
    @greater_or_equal_than
  end

  def setup_for_lt_value
    @less_than = Sorter.new
  end

  def setup_for_ge_value
    @greater_or_equal_than = Sorter.new
  end

end