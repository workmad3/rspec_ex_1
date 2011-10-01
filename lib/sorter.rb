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

  def sortit(arr)
    arr = @less_than.sortit(arr) if @less_than
    arr.push(@value)
    arr = @greater_or_equal_than.sortit(arr) if @greater_or_equal_than
    arr
  end

  private

  def add_lt(val)
    @less_than || @less_than = Sorter.new
    @less_than.add(val)
  end

  def add_ge(val)
    @greater_or_equal_than || @greater_or_equal_than = Sorter.new
    @greater_or_equal_than.add(val)
  end


end